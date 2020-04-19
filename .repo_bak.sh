#!/usr/bin/env bash

set -e # always immediately exit upon error

# directory config. ending slashes are important!
src_dir="$HOME/repositories/"
dest_dir="$HOME/Dropbox/repositories/"

# run the sync
rsync -arv --delete-after --delete-excluded --progress \
  --filter='dir-merge,- .gitignore' \
  --exclude-from='/Users/xuanbo/git/.gitignore_global' \
  --chmod='F-w' \
  "$src_dir" "$dest_dir"

echo ""
