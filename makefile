install:
	env | grep -Fs '$$HOME/.local/bin' || echo 'export PATH="$$HOME/.local/bin:$$PATH"' >>"$(HOME)/.bashrc"
	env | grep -Fs '$$HOME/.local/share/man' || echo 'export MANPATH="$$HOME/.local/share/man:$$MANPATH"' >>"$(HOME)/.bashrc"
	mkdir -p "$(HOME)/.local/bin"
	cp -a bin/{pshell,qsub,qwait,qalter,qdel,qhold,qmgr,qorder,qrls,qselect} "$(HOME)/.local/bin"
	make -C tmux install

clean:
	make -C tmux clean

.PHONY: install clean
