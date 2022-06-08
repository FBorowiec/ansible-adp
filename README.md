# Ansible configuration for adp devs

**NOTE:** Before you start the script make sure:

* The proxy settings are commented out inside your `.bashrc`/`.zshrc`.
* `apt update` runs successfully with **NO ERRORS**
* No VPN + no proxy settings are set up

## Installation

`./ansible-install`

And that's it.

## Next steps

* Define a `git` user under `.gitconfig`
* `tmux` -> `<Ctrl-b>I`
* Add your id in: `git/.gitconfig`.
* `cd ~/dotfiles` -> `nvim` -> `:PackerSync`

## Vim

The default terminal bindings will be changed to vim.
If you feel too much like a soydev you can switch it off:

* In the `.zshrc` under the `plugins` section -> comment out `zsh-vi-mode`
* Under `~/.gitconfig` -> `[core] editor = nvim` -> `[core] editor = nano`
