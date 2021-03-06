---
file: $ZSH_DOTFILES_DIR/functions.d/README.md
---

This is the folder where you should place your functions files.
Just touch your new functions file, name it after the subject you create your functions for,
and give it a 'zfn' extension to ease identifying its contents.

Here you are an example of functions file content:

```sh
# vim:ft=zsh
# File: $ZSH_DOTFILES_DIR/functions.d/java.zfn
# Contents: Java functions

# Creates a new maven project
function maven_new_project {
	if [[ ($# -ne 1) || ("$1" == "--help") ]]; then
		echo "Usage: $0 project_name"
		echo "   ie: $0 tsaenode"
	else
		local root_path="${PROJECTS_PATH}/java"
		local organization="org.coderebels"
		local project="$1"
		local groupId="${organization}.${project}"
		local artifactId="${project}"
		printf "\n[maven] Creating java project '${project}' ...\n\n"
		cd "${root_path}" \
			&& mvn archetype:generate \
				-DgroupId=${groupId} \
				-DartifactId=${artifactId} \
				-Dpackage=${organization} \
				-Dversion=1.0-SNAPSHOT \
				-DarchetypeArtifactId=maven-archetype-quickstart \
				-DinteractiveMode=false
	fi
}
```
