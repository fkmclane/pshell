pshell
======

pshell is a usable shell for the [Palmetto](https://www.palmetto.clemson.edu/) cluster. It submits a job which starts a tmux session within a reverse SSH session to the login node. This keeps consistency in your shell and allows you to use all of the features of your terminal emulator (including 256 color). Additionally, you can detach these tmux sessions and reattach them from the login node while they are active.


Installation
============

```sh
$ qsub -I
$ cd <source directory>
$ make install
```


Usage
=====

```sh
$ pshell [optional qsub flags]
```
