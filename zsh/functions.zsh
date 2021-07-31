# vim:ft=zsh
# File: $ZSH_DOTFILES_DIR/functions.zsh
# Contents: Functions with arguments


# Applying functions files
functions_folder="$ZSH_DOTFILES_DIR/functions.d"

for f in $functions_folder/*.zfn; do
	[[ -f "$f" ]] || continue
	. $f
done

unset functions_folder
