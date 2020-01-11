// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

#ifndef _hello_H_
#define _hello_H_

#include <stdint.h>

#define UART0_BASE_ADDR 0x40000000

//#include "uart_regs.h"  // Generated.



/**
 * Send unsigned int over UART
 */
int sum(int x, int y);
int sub(int x, int y);
int mult(int x, int y);
int div(int x, int y);

uint32_t lz77_compress (uint8_t *uncompressed_text, uint32_t uncompressed_size, uint8_t *compressed_text, uint8_t pointer_length_width);

#endif
