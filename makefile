install:
	grep -Fs '$$HOME/.local/bin' "$(HOME)/.bashrc" || echo 'export PATH="$$HOME/.local/bin:$$PATH"' >>"$(HOME)/.bashrc"
	grep -Fs '$$HOME/.local/share/man' "$(HOME)/.bashrc" || echo 'export MANPATH="$$HOME/.local/share/man:$$MANPATH"' >>"$(HOME)/.bashrc"
	mkdir -p "$(HOME)/.local/bin"
	cp -a bin/{pshell,qsub,qwait,qalter,qdel,qhold,qmgr,qorder,qrls,qselect} "$(HOME)/.local/bin"
	make -C tmux

clean:
	make -C tmux clean

.PHONY: install clean
