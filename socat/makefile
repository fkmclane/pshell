PREFIX?=$(HOME)/.local
VERSION?=1.7.3.0

install:
	[ -e socat-$(VERSION) ] || curl -L http://www.dest-unreach.org/socat/download/socat-$(VERSION).tar.gz | tar xz
	mkdir -p $(PREFIX)
	pushd socat-$(VERSION) && ./configure --prefix=$(PREFIX) && popd
	make -C socat-$(VERSION) install

clean:
	rm -rf socat-*

.PHONY: install clean
