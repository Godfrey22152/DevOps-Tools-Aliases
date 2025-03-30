if grep -q "# Argo Rollouts Aliases" ~/.bashrc; then
    echo "Argo Rollouts Aliases already exist in the ~/.bashrc"
else
    echo "Adding Argo Rollouts Aliases to the ~/.bashrc..."
    cat <<EOF >> ~/.bashrc

# ────────────────────────────────────────────────────────────────
# Argo Rollouts Aliases
# ────────────────────────────────────────────────────────────────

# General Argo Rollouts Aliases
alias ar='kubectl argo rollouts'                  # Base command for Argo Rollouts
alias arver='kubectl argo rollouts version'       # Show Argo Rollouts version
alias arhelp='kubectl argo rollouts help'         # Show help menu

# Rollouts Management
alias arlist='kubectl argo rollouts list'         # List all Argo Rollouts
alias arget='kubectl argo rollouts get rollout'   # Get details of a rollout
alias ardelete='kubectl argo rollouts delete rollout'  # Delete a rollout

# Rollouts Update & Promote
alias arrestart='kubectl argo rollouts restart'   # Restart a rollout
alias arpromote='kubectl argo rollouts promote'   # Manually promote a canary deployment
alias arabort='kubectl argo rollouts abort'       # Abort a rollout update

# Rollouts Status & Monitoring
alias arstatus='kubectl argo rollouts get rollout'  # Get rollout status
alias arwatch='kubectl argo rollouts get rollout --watch'  # Watch rollout status
alias arhist='kubectl argo rollouts history'      # Show rollout revision history
alias arpause='kubectl argo rollouts pause'       # Pause an ongoing rollout
alias arresume='kubectl argo rollouts resume'     # Resume a paused rollout

# Rollouts Analysis & Metrics
alias argetana='kubectl argo rollouts get analysisrun'  # Get analysis run details
alias argetanalist='kubectl argo rollouts list analysisrun'  # List analysis runs
alias argetanawatch='kubectl argo rollouts get analysisrun --watch'  # Watch analysis progress

# ────────────────────────────────────────────────────────────────

EOF
    echo "Argo Rollouts Aliases added successfully!"
fi

# Reload bashrc to apply aliases
source ~/.bashrc
