# vim:ft=zsh
# File: $ZSH_DOTFILES_DIR/aliases.zsh
# Contents: Shortcut commands


# Applying aliases files
aliases_folder="$ZSH_DOTFILES_DIR/aliases.d"

for f in $aliases_folder/*.zal; do
	[[ -f "$f" ]] || continue
	. $f
done

unset aliases_folder
