#!/bin/bash
echo "> Applying default configurations for git"
# Make git aware of executable permissions
git config --global core.filemode true
# Push your current branch to a branch with the same name
git config --global push.default current
# Set VS Code as default editor
git config --global core.editor code
# configure the pager to just output content is below one page
git config --global core.pager "less --quit-if-one-screen --quit-at-eof --raw-control-chars --no-init"
# Display the command line interface in color
git config --global color.ui auto
# Show branch names with git log
git config --global log.decorate auto
# Enable parallel index preload for operations like git diff
git config --global core.preloadindex true
echo "> Default configurations applied"