SOURCES:=$(wildcard *.asm)
OBJECTS:=$(patsubst %.asm,%.o,$(SOURCES))

all: gopher.gb

%.o: %.asm
	rgbasm -E -o $@ $<

gopher.gb: $(OBJECTS)
	rgblink -n gopher.sym -m gopher.map -o $@ $<
	rgbfix -jv -k MR -l 0x33 -m 0x01 -p 0 -r 0 -t gopher $@

clean:
	rm -f *.o gopher.gb gopher.sym gopher.map
