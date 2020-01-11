NAME := lowrisc_systems_top_earlgrey_nexysvideo_0.1
BITSTREAM := lowrisc_systems_top_earlgrey_nexysvideo_0.1.bit
PART := xc7a200tsbg484-1

all: $(BITSTREAM)

$(BITSTREAM):  $(NAME)_run.tcl $(NAME).xpr
	vivado -notrace -mode batch -source $^

$(NAME).xpr: $(NAME).tcl
	vivado -notrace -mode batch -source $<

build-gui: $(NAME).xpr
	vivado $<

$(NAME).runs/synth_1: $(NAME)_synth.tcl $(NAME).xpr
	vivado -notrace -mode batch -source $^

synth: $(NAME).runs/synth_1

pgm: $(NAME)_pgm.tcl $(BITSTREAM)
	vivado -quiet -nolog -notrace -mode batch -source $< -tclargs $(PART) $(BITSTREAM)

.PHONY: pgm
