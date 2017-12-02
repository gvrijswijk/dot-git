# Load shell dotfiles.
# Specialities:
#   ~/.path for $PATH extensions
#   ~/.extra for non-committable settings
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
