if grep -q "# Helm Aliases" ~/.bashrc; then
    echo "Helm Aliases already exist in the ~/.bashrc"
else
    echo "Adding Helm Aliases to the ~/.bashrc..."
    cat <<EOF >> ~/.bashrc

# ────────────────────────────────────────────────────────────────
# Helm Aliases
# ────────────────────────────────────────────────────────────────

alias h='helm'                             # Shorter Helm command
alias ha='helm repo add'                   # Add a Helm repository
alias hl='helm list'                       # List installed releases
alias hi='helm install'                    # Install a Helm chart
alias hu='helm upgrade'                    # Upgrade a Helm release
alias hr='helm rollback'                   # Rollback a release
alias hdel='helm delete'                   # Delete a release
alias hdep='helm dependency update'        # Update dependencies
alias htpl='helm template'                 # Render chart templates
alias hsr='helm search repo'               # Search for a chart in repositories
alias hsf='helm search hub'                # Search for a chart in Helm Hub
alias hpi='helm plugin install'            # Install a Helm plugin
alias hpl='helm plugin list'               # List installed plugins
alias hun='helm uninstall'                 # Uninstall a release
alias hv='helm version'                    # Display Helm version
alias hhist='helm history'                 # Show release history
alias hls='helm lint'                      # Lint a chart before deploying
alias hrep='helm repo list'                # List all Helm repositories
alias hrm='helm repo remove'               # Remove a Helm repository
alias hrup='helm repo update'              # Update Helm repositories
alias hst='helm status'                    # Show the status of a release
alias hns='helm install --namespace'       # Install a release into a specific namespace
alias hdry='helm install --dry-run'        # Dry-run to test install
alias hupd='helm upgrade --install'        # Upgrade or install if not exists

# ────────────────────────────────────────────────────────────────

EOF
    echo "Helm Aliases added successfully!"
fi

# Reload bashrc to apply aliases
source ~/.bashrc
