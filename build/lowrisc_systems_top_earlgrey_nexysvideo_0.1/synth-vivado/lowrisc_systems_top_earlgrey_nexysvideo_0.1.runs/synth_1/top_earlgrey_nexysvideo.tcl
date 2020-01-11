# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a200tsbg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/synth-vivado/lowrisc_systems_top_earlgrey_nexysvideo_0.1.cache/wt [current_project]
set_property parent.project_path /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/synth-vivado/lowrisc_systems_top_earlgrey_nexysvideo_0.1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_cache_permissions {read write} [current_project]
set_property include_dirs /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/synth-vivado [current_fileset]
set_property verilog_define {PRIM_DEFAULT_IMPL=prim_pkg::ImplXilinx ROM_INIT_FILE=../../../../../build-bin/sw/device/fpga/boot_rom/boot_rom.vmem} [current_fileset]
read_verilog -library xil_defaultlib -sv {
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_constants_top_pkg_0/rtl/top_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_assert_0.1/rtl/prim_assert.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_generic_clock_gating_0/rtl/prim_generic_clock_gating.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_generic_clock_mux2_0/rtl/prim_generic_clock_mux2.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_generic_flash_0/rtl/prim_generic_flash.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_generic_pad_wrapper_0/rtl/prim_generic_pad_wrapper.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_generic_ram_1p_0/rtl/prim_generic_ram_1p.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_generic_ram_2p_0/rtl/prim_generic_ram_2p.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_prim_pkg_0.1/rtl/prim_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_xilinx_clock_gating_0/rtl/prim_xilinx_clock_gating.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_xilinx_clock_mux2_0/rtl/prim_xilinx_clock_mux2.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_xilinx_pad_wrapper_0/rtl/prim_xilinx_pad_wrapper.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_xilinx_ram_2p_0/rtl/prim_xilinx_ram_2p.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_alu.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_compressed_decoder.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_controller.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_cs_registers.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_decoder.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_ex_block.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_fetch_fifo.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_id_stage.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_if_stage.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_load_store_unit.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_multdiv_fast.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_multdiv_slow.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_prefetch_buffer.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_pmp.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_register_file_ff.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_core.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_flash_ctrl_pkg_0.1/rtl/flash_ctrl_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_clock_gating_0/abstract/prim_clock_gating.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_clock_mux2_0/abstract/prim_clock_mux2.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_diff_decode_0/rtl/prim_diff_decode.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_pad_wrapper_0/abstract/prim_pad_wrapper.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_ram_1p_0/abstract/prim_ram_1p.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_ram_2p_0/abstract/prim_ram_2p.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_tlul_headers_0.1/rtl/tlul_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_clock_inverter.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_alert_receiver.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_alert_sender.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_arbiter.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_esc_receiver.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_esc_sender.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_sram_arbiter.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_fifo_async.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_fifo_sync.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_flop_2sync.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_lfsr.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_packer.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_pulse_sync.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_filter.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_filter_ctr.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_subreg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_subreg_ext.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_intr_hw.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_secded_39_32_enc.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_secded_39_32_dec.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_ram_2p_adv.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_all_0.1/rtl/prim_ram_2p_async_adv.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_flash_0/abstract/prim_flash.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_generic_rom_0/rtl/prim_generic_rom.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_xilinx_rom_0/rtl/prim_xilinx_rom.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_tlul_common_0.1/rtl/tlul_fifo_sync.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_tlul_common_0.1/rtl/tlul_fifo_async.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_tlul_common_0.1/rtl/tlul_assert.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_tlul_common_0.1/rtl/tlul_err.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_tlul_common_0.1/rtl/tlul_assert_multiple.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/pulp-platform_riscv-dbg_0.1_0/pulp_riscv_dbg/debug_rom/debug_rom.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/pulp-platform_riscv-dbg_0.1_0/pulp_riscv_dbg/src/dm_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/pulp-platform_riscv-dbg_0.1_0/pulp_riscv_dbg/src/dm_sba.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/pulp-platform_riscv-dbg_0.1_0/pulp_riscv_dbg/src/dm_csrs.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/pulp-platform_riscv-dbg_0.1_0/pulp_riscv_dbg/src/dm_mem.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/pulp-platform_riscv-dbg_0.1_0/pulp_riscv_dbg/src/dmi_cdc.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/pulp-platform_riscv-dbg_0.1_0/pulp_riscv_dbg/src/dmi_jtag.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/pulp-platform_riscv-dbg_0.1_0/pulp_riscv_dbg/src/dmi_jtag_tap.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_prim_rom_0/abstract/prim_rom.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_tlul_adapter_reg_0.1/rtl/tlul_adapter_reg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_tlul_adapter_sram_0.1/rtl/tlul_adapter_sram.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_tlul_socket_1n_0.1/rtl/tlul_err_resp.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_tlul_socket_1n_0.1/rtl/tlul_socket_1n.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_tlul_socket_m1_0.1/rtl/tlul_socket_m1.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_tlul_sram2tlul_0.1/rtl/sram2tlul.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_aes_0.5/rtl/aes_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_aes_0.5/rtl/aes_reg_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_aes_0.5/rtl/aes_reg_top.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_aes_0.5/rtl/aes_core.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_aes_0.5/rtl/aes_sub_bytes.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_aes_0.5/rtl/aes_sbox_lut.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_aes_0.5/rtl/aes_shift_rows.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_aes_0.5/rtl/aes_mix_columns.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_aes_0.5/rtl/aes_mix_single_column.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_aes_0.5/rtl/aes_key_expand.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_aes_0.5/rtl/aes_control.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_aes_0.5/rtl/aes.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_flash_ctrl_0.1/rtl/flash_ctrl_reg_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_flash_ctrl_0.1/rtl/flash_ctrl_reg_top.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_flash_ctrl_0.1/rtl/flash_ctrl.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_flash_ctrl_0.1/rtl/flash_erase_ctrl.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_flash_ctrl_0.1/rtl/flash_prog_ctrl.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_flash_ctrl_0.1/rtl/flash_rd_ctrl.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_flash_ctrl_0.1/rtl/flash_mp.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_flash_ctrl_0.1/rtl/flash_phy.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_gpio_0.1/rtl/gpio_reg_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_gpio_0.1/rtl/gpio.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_gpio_0.1/rtl/gpio_reg_top.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_hmac_0.1/rtl/hmac_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_hmac_0.1/rtl/sha2.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_hmac_0.1/rtl/sha2_pad.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_hmac_0.1/rtl/hmac_reg_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_hmac_0.1/rtl/hmac_reg_top.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_hmac_0.1/rtl/hmac_core.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_hmac_0.1/rtl/hmac.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_nmi_gen_0.1/rtl/nmi_gen_reg_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_nmi_gen_0.1/rtl/nmi_gen_reg_top.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_nmi_gen_0.1/rtl/nmi_gen.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_rv_core_ibex_0.1/rtl/rv_core_ibex.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_rv_dm_0.1/rtl/rv_dm.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_rv_dm_0.1/rtl/tlul_adapter_host.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_rv_plic_component_0.1/rtl/rv_plic_gateway.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_rv_plic_component_0.1/rtl/rv_plic_target.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_rv_timer_0.1/rtl/rv_timer_reg_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_rv_timer_0.1/rtl/rv_timer_reg_top.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_rv_timer_0.1/rtl/timer_core.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_rv_timer_0.1/rtl/rv_timer.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_spi_device_0.1/rtl/spi_device_reg_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_spi_device_0.1/rtl/spi_device_reg_top.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_spi_device_0.1/rtl/spi_device_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_spi_device_0.1/rtl/spi_fwm_rxf_ctrl.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_spi_device_0.1/rtl/spi_fwm_txf_ctrl.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_spi_device_0.1/rtl/spi_fwmode.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_spi_device_0.1/rtl/spi_device.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_uart_0.1/rtl/uart_reg_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_uart_0.1/rtl/uart_reg_top.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_uart_0.1/rtl/uart_rx.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_uart_0.1/rtl/uart_tx.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_uart_0.1/rtl/uart_core.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_ip_uart_0.1/rtl/uart.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_systems_top_earlgrey_0.1/ip/xbar_main/rtl/autogen/tl_main_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_systems_top_earlgrey_0.1/ip/xbar_main/rtl/autogen/xbar_main.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_systems_top_earlgrey_0.1/ip/xbar_peri/rtl/autogen/tl_peri_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_systems_top_earlgrey_0.1/ip/xbar_peri/rtl/autogen/xbar_peri.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_systems_top_earlgrey_0.1/ip/rv_plic/rtl/autogen/rv_plic_reg_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_systems_top_earlgrey_0.1/ip/rv_plic/rtl/autogen/rv_plic_reg_top.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_systems_top_earlgrey_0.1/ip/rv_plic/rtl/autogen/rv_plic.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_systems_top_earlgrey_0.1/ip/pinmux/rtl/autogen/pinmux_reg_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_systems_top_earlgrey_0.1/ip/pinmux/rtl/autogen/pinmux_reg_top.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/ip/pinmux/rtl/pinmux.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_systems_top_earlgrey_0.1/ip/alert_handler/rtl/autogen/alert_handler_reg_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_systems_top_earlgrey_0.1/ip/alert_handler/rtl/autogen/alert_handler_reg_top.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/ip/alert_handler/rtl/alert_pkg.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/ip/alert_handler/rtl/alert_handler_reg_wrap.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/ip/alert_handler/rtl/alert_handler_class.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/ip/alert_handler/rtl/alert_handler_ping_timer.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/ip/alert_handler/rtl/alert_handler_esc_timer.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/ip/alert_handler/rtl/alert_handler_accu.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/ip/alert_handler/rtl/alert_handler.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_systems_top_earlgrey_0.1/rtl/padctl.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_systems_top_earlgrey_0.1/rtl/autogen/top_earlgrey.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_systems_top_earlgrey_nexysvideo_0.1/rtl/clkgen_xil7series.sv
  /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_systems_top_earlgrey_nexysvideo_0.1/rtl/top_earlgrey_nexysvideo.sv
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_systems_top_earlgrey_nexysvideo_0.1/data/pins_nexysvideo.xdc
set_property used_in_implementation false [get_files /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_systems_top_earlgrey_nexysvideo_0.1/data/pins_nexysvideo.xdc]

read_xdc /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_systems_top_earlgrey_nexysvideo_0.1/data/placement.xdc
set_property used_in_implementation false [get_files /home/test/opentitan/build/lowrisc_systems_top_earlgrey_nexysvideo_0.1/src/lowrisc_systems_top_earlgrey_nexysvideo_0.1/data/placement.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top top_earlgrey_nexysvideo -part xc7a200tsbg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top_earlgrey_nexysvideo.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_earlgrey_nexysvideo_utilization_synth.rpt -pb top_earlgrey_nexysvideo_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
