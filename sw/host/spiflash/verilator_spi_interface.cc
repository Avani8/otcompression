// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

#include "sw/host/spiflash/verilator_spi_interface.h"

#include <fcntl.h>
#include <termios.h>
#include <unistd.h>

#include <cstring>
#include <iostream>
#include <string>

namespace opentitan {
namespace spiflash {
namespace {

// Required delay to synchronize transactions with simulation environment.
// TODO: If transmission is not successful, adapt this by an argument.
constexpr int kWriteReadDelay = 20000000;

// Configure |fd| as a serial port with baud rate 9600.
bool SetTermOpts(int fd) {
  struct termios options;
  if (tcgetattr(fd, &options) != 0) {
    return false;
  }
  cfmakeraw(&options);
  // The current Verilator configuration uses 9600 baud rate.
  if (cfsetispeed(&options, B9600) != 0) {
    return false;
  }
  if (cfsetospeed(&options, B9600) != 0) {
    return false;
  }
  if (tcsetattr(fd, TCSANOW, &options) != 0) {
    return false;
  }
  return true;
}

// Returns file handle on success, or nullopt on failure. This function
// configures de file handle to behave as a serial port with baud rate 9600,
// which is the baud rate supported by Verilator.
int OpenDevice(const std::string &filename) {
  int fd = open(filename.c_str(), O_RDWR | O_NOCTTY | O_NONBLOCK | O_CLOEXEC);
  if (fd < 0) {
    std::cerr << "Failed to open device: " << filename << std::endl;
    return fd;
  }
  if (!SetTermOpts(fd)) {
    close(fd);
    return -1;
  }
  return fd;
}

// Reads |size| bytes into |rx| buffer from |fd|. Returns the number of bytes
// read.
int ReadBytes(int fd, uint8_t *rx, size_t size) {
  size_t bytes_read = 0;
  while (bytes_read != size) {
    size_t read_size = read(fd, &rx[bytes_read], size - bytes_read);
    switch (read_size) {
      case -1:
        if (errno == EAGAIN || errno == EWOULDBLOCK) {
          continue;
        }
        break;
      default:
        bytes_read += read_size;
    }
  }
  return bytes_read;
}

}  // namespace

VerilatorSpiInterface::~VerilatorSpiInterface() {
  if (fd_ != -1) {
    close(fd_);
  }
}

bool VerilatorSpiInterface::Init() {
  fd_ = OpenDevice(spi_filename_);
  if (fd_ < 0) {
    return false;
  }
  return true;
}

bool VerilatorSpiInterface::TransmitFrame(const uint8_t *tx, uint8_t *rx,
                                          size_t size) {
  size_t bytes_written = write(fd_, tx, size);
  if (bytes_written != size) {
    std::cerr << "Failed to write bytes to spi interface. Bytes written: "
              << bytes_written << " expected: " << size << std::endl;
    return false;
  }
  usleep(kWriteReadDelay);
  size_t bytes_read = ReadBytes(fd_, rx, size);
  if (bytes_read < size) {
    std::cerr << "Failed to read bytes from spi interface. Bytes read: "
              << bytes_read << " expected: " << size << std::endl;
  }
  return true;
}
}  // namespace spiflash
}  // namespace opentitan
