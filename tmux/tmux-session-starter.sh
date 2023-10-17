#!/usr/bin/env bash

# Check if an argument was provided for the command (default is 'tmux')
if [[ $# -eq 1 ]]; then
	command="$1"
else
	command="tmux"
fi

# Use 'find' and 'fzf-tmux' to interactively select a folder
# selected=$(fd --type d --hidden --exclude .git node_modules --max-depth=1 --min-depth=1 | fzf-tmux)
selected=$(find ~/ ~/work ~/personal -mindepth 1 -maxdepth 1 -type d | fzf-tmux)

# If no folder was selected, exit
if [[ -z $selected ]]; then
	exit 0
fi

# Extract the base name of the selected directory
selected_name=$(basename "$selected" | tr . _)

# Check if there is no existing session with the same name as `selected_name`
if ! tmux has-session -t=$selected_name 2>/dev/null; then
	echo 'hello world'
	# Start a new tmux session with the selected folder as the working directory
	if [[ ! -z "$command" ]]; then
		echo 'hello world1'
		# If the command is 'vim', open the folder in Vim
		tmux new-session -ds "$selected_name" -c "$selected" "$command"
	else
		echo 'hello world2'
		# Default: Start a new tmux session
		echo "tmux new-session -ds $selected_name -c $selected"
		# FIXME: This does nothing for some reason ??
		tmux new-session -ds $selected_name -c $selected
	fi
fi

# Switch to the newly created tmux session
tmux switch-client -t "$selected_name"
echo "tmux switch-client -t $selected_name"
