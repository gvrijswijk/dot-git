# Add ~/bin to $PATH
export PATH="$HOME/bin:/usr/local/bin:$PATH";

# Load shell dotfiles.
# Specialities:
#   ~/.path for $PATH extensions
#   ~/.extra for non-committable settings
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
