BDFS = $(wildcard *.bdf)
PCFS = $(BDFS:%.bdf=%.pcf)

all: pcfs

pcfs: $(PCFS)

$(PCFS): %.pcf: %.bdf
	bdftopcf -o $@ $^

clean:
	rm -f *.pcf

.PHONY: all clean
