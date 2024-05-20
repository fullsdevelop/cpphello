.PHONY: clean build
.ONESHELL:
SHELL:=/bin/bash
NINJA:=samu

clean:
	rm -rf build

build:
	cmake -Bbuild -GNinja .
	cd build
	$(NINJA) -v