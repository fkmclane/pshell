install:
	[ -e "$(HOME)/.tmux.conf" ] || cp tmux/tmux.conf "$(HOME)/.tmux.conf"
	grep -Fs '$$HOME/.local/bin' "$(HOME)/.bashrc" || echo 'export PATH="$$HOME/.local/bin:$$PATH"' >>"$(HOME)/.bashrc"
	mkdir -p "$(HOME)/.local/bin"
	cp -a bin/{pshell,qsub,qwait,qalter,qdel,qhold,qmgr,qorder,qrls,qselect} tmux/tmux "$(HOME)/.local/bin"

.PHONY: install
