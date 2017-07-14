PREFIX=$(HOME)/.local
VERSION=2.5
LIBEVENT_VERSION=2.1.8

install:
	[ -e libevent-$(LIBEVENT_VERSION)-stable ] || curl -L https://github.com/libevent/libevent/releases/download/release-$(LIBEVENT_VERSION)-stable/libevent-$(LIBEVENT_VERSION)-stable.tar.gz | tar xz
	[ -e tmux-$(VERSION) ] || curl -L https://github.com/tmux/tmux/releases/download/$(VERSION)/tmux-$(VERSION).tar.gz | tar xz
	mkdir -p $(PREFIX)
	pushd libevent-$(LIBEVENT_VERSION)-stable && ./configure --prefix=$(PREFIX) && popd
	make -C libevent-$(LIBEVENT_VERSION)-stable install
	pushd tmux-$(VERSION) && LD_LIBRARY_PATH=$(HOME)/.local/lib ./configure --prefix=$(PREFIX) && popd
	make -C tmux-$(VERSION) install
	[ -e "$(HOME)/.tmux.conf" ] || cp tmux.conf "$(HOME)/.tmux.conf"

clean:
	rm -r tmux-* libevent-*

.PHONY: install clean
