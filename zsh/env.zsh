# vim:ft=zsh
# File: $ZSH_DOTFILES_DIR/env.zsh
# Contents: Values used by other scripts and applications


# Applying env files
envs_folder="${ZSH_DOTFILES_DIR}/env.d"

for f in $envs_folder/*.zenv; do
	[[ -f "$f" ]] || continue
	. $f
done

unset envs_folder
