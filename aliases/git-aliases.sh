if grep -q "# Git Aliases" ~/.bashrc; then
    echo "Git Aliases already exist in the ~/.bashrc"
else
    echo "Adding Git Aliases to the ~/.bashrc..."
    cat <<EOF >> ~/.bashrc

# ────────────────────────────────────────────────────────────────
# Git Aliases
# ────────────────────────────────────────────────────────────────

alias g='git'
alias ga='git add'                                                # Add files to staging
alias gaa='git add --all'                                         # Add all files (tracked & untracked)
alias gc='git commit -m'                                          # Commit with message
alias gca='git commit --amend -m'                                 # Amend the last commit message
alias gcl='git clone'                                             # Clone a repository
alias gco='git checkout'                                          # Switch branches
alias gcb='git checkout -b'                                       # Create and switch to a new branch
alias gd='git diff'                                               # Show file differences
alias gds='git diff --staged'                                     # Show staged file differences
alias gl='git pull'                                               # Pull latest changes
alias gp='git push'                                               # Push changes to remote
alias gpf='git push --force'                                      # Force push
alias gpsup='git push --set-upstream origin'                      # Push branch & track upstream
alias gst='git status -sb'                                        # Show short status
alias gbr='git branch'                                            # List branches
alias gbd='git branch -d'                                         # Delete branch
alias gbD='git branch -D'                                         # Force delete branch
alias gr='git remote -v'                                          # Show remote repositories
alias grv='git remote show origin'                                # Show detailed remote info
alias gf='git fetch'                                              # Fetch latest changes
alias gm='git merge'                                              # Merge branches
alias grh='git reset --hard'                                      # Hard reset
alias grs='git reset --soft'                                      # Soft reset
alias gt='git tag'                                                # List tags
alias gts='git tag -s'                                            # Sign a tag
alias gtl='git tag -l'                                            # List available tags
alias glog='git log --oneline --graph --decorate --all'           # Pretty log view
alias gsh='git stash'                                             # Stash changes
alias gsp='git stash pop'                                         # Apply last stashed changes
alias gsa='git stash apply'                                       # Apply stash without deleting
alias gsl='git stash list'                                        # Show stash list
alias gsr='git stash drop'                                        # Remove stash
alias gwip='git add . && git commit -m "WIP" '                    # Save work in progress
alias gunwip='git reset HEAD~1'                                   # Undo last commit
alias gundo='git reset --soft HEAD~1'                             # Undo last commit but keep changes
alias gclean='git clean -fd'                                      # Remove untracked files and directories
alias gch='git cherry-pick'                                       # Apply commit from another branch
alias gpr='git pull --rebase'                                     # Pull with rebase
alias glg='git log --oneline --decorate --graph --all'            # Colorful log graph

# ────────────────────────────────────────────────────────────────

EOF
    echo "Git Aliases added successfully!"
fi

# Reload bashrc to apply aliases
source ~/.bashrc
