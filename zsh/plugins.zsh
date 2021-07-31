# vim:ft=zsh
# File: $ZSH_DOTFILES_DIR/plugins.zsh
# Contents: ZSH Plugins


# Applying plugins files
plugins_folder="${ZSH_DOTFILES_DIR}/plugins.d"

for f in $plugins_folder/*.zpl; do
	[[ -f "$f" ]] || continue
	. $f
done

unset plugins_folder
