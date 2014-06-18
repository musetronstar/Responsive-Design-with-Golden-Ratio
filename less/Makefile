LESS_FILES = $(wildcard *.less)
CSS_FILES  = $(LESS_FILES:.less=.css)

ifeq ($(DEBUG),True)
	LESSC=lessc
else
	LESSC=lessc -x
endif

all: $(CSS_FILES)

%.css: %.less
	$(LESSC) $< > $@

clean:
	rm -f $(CSS_FILES)
