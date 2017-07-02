PREFIX=$(HOME)/.local
VERSION=2.5

install:
	curl -L https://github.com/tmux/tmux/releases/download/$(VERSION)/tmux-$(VERSION).tar.gz | tar xz
	mkdir -p $(PREFIX)
	cd tmux-$(VERSION) && ./configure --prefix=$(PREFIX)
	make -C tmux-$(VERSION) install
	[ -e "$(HOME)/.tmux.conf" ] || cp tmux.conf "$(HOME)/.tmux.conf"

clean:
	rm -r tmux-*

.PHONY: install clean
