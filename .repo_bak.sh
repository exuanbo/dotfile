#!/usr/bin/env zsh

# always immediately exit upon error
set -e

# directory config. ending slashes are important!
src_dir="$HOME/repositories/"
dest_dir="$HOME/Dropbox/repositories/"

# run the sync
rsync -arv --delete-after --delete-excluded \
  --filter="dir-merge, - .gitignore" \
  --exclude-from="$HOME/git/.gitignore_global" \
  --chmod="F-w" \
  "$src_dir" "$dest_dir"

