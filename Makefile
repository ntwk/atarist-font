BDFS = $(wildcard *.bdf)
PCFS = $(BDFS:%.bdf=%.pcf)
VGAS = $(BDFS:%.bdf=%.vga)

all: pcfs

pcfs: $(PCFS)

$(PCFS): %.pcf: %.bdf
	bdftopcf -o $@ $^

vgas: $(VGAS)

$(VGAS): %.vga: %.bdf
	ruby bdftovga $^ $@

clean:
	rm -f *.pcf *.vga

.PHONY: all clean
