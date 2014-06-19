all: build

DEBUG=
debug: DEBUG="debug"
debug: build

build: less

less: force_look
	make -C	less/ $(DEBUG)
	cp less/gld.css css/
	cp less/site.css css/

force_look:
	true

clean:
	make -C less/ clean
