---
file: $ZSH_DOTFILES_DIR/env.d/README.md
---

This is the folder where you should place your env files.
Just touch your new env file, name it after the application you are defining the env for,
and give it an 'zenv' extension to ease identifying its contents.

Here you are an example of env file content:

```sh
# vim:ft=zsh
# File: $ZSH_DOTFILES_DIR/env.d/10_chefbox.zenv
# Contents: Chefbox Env Variables

export PATH="/opt/chef/embedded/bin:${PATH}"
```
