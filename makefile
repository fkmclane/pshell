install:
	env | grep -Fs '$(HOME)/.local/bin' || grep -Fs '$$HOME/.local/bin' "$(HOME)/.bashrc" || echo 'export PATH="$$HOME/.local/bin:$$PATH"' >>"$(HOME)/.bashrc"
	env | grep -Fs '$(HOME)/.local/lib' || grep -Fs '$$HOME/.local/lib' "$(HOME)/.bashrc" || echo 'export LD_LIBRARY_PATH="$$HOME/.local/lib:$$LD_LIBRARY_PATH"' >>"$(HOME)/.bashrc"
	env | grep -Fs '$(HOME)/.local/share/man' || grep -Fs '$$HOME/.local/share/man' "$(HOME)/.bashrc" || echo 'export MANPATH="$$HOME/.local/share/man:$$MANPATH"' >>"$(HOME)/.bashrc"
	mkdir -p "$(HOME)/.local/bin"
	cp -a bin/{pshell,qsub,qwait,qalter,qdel,qhold,qmgr,qorder,qrls,qselect} "$(HOME)/.local/bin"
	make -C tmux install
	make -C socat install

clean:
	make -C tmux clean
	make -C socat clean

.PHONY: install clean
