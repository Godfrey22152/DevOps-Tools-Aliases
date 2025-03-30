if grep -q "# ArgoCD Aliases" ~/.bashrc; then
    echo "ArgoCD Aliases already exist in the ~/.bashrc"
else
    echo "Adding ArgoCD Aliases to the ~/.bashrc..."
    cat <<EOF >> ~/.bashrc

# ────────────────────────────────────────────────────────────────
# ArgoCD Aliases
# ────────────────────────────────────────────────────────────────

# General ArgoCD Aliases
alias acd='argocd'                                # ArgoCD main command
alias acdver='argocd version'                     # Show ArgoCD version
alias acdctx='argocd context'                     # Show ArgoCD server context
alias acdlogin='argocd login'                     # Log in to ArgoCD server
alias acdlogout='argocd logout'                   # Log out of ArgoCD server
alias acdhelp='argocd help'                       # Show help menu

# ArgoCD App Management
alias acda='argocd app'                           # Base command for ArgoCD apps
alias acdlist='argocd app list'                   # List all ArgoCD applications
alias acdget='argocd app get'                     # Get details of an application
alias acddesc='argocd app get --refresh'          # Get application details with a fresh status
alias acdcreate='argocd app create'               # Create a new ArgoCD application
alias acdedit='argocd app edit'                   # Edit an existing ArgoCD application
alias acddelete='argocd app delete'               # Delete an ArgoCD application
alias acdset='argocd app set'                     # Set configurations for an ArgoCD application

# ArgoCD Sync & Rollback
alias acdsync='argocd app sync'                   # Synchronize an application
alias acdsyncl='argocd app sync --local'          # Sync using local manifests
alias acdsyncf='argocd app sync --force'         # Force synchronization of an application
alias acdrollback='argocd app rollback'           # Roll back an application to a previous state
alias acdrev='argocd app history'                 # Show the revision history of an app
alias acdhist='argocd app history --refresh'      # Show fresh app history

# ArgoCD App Status & Health
alias acdstatus='argocd app get --refresh'        # Refresh and get the latest status of an app
alias acdhealth='argocd app get | grep Health'    # Check app health status
alias acdout='argocd app get -o json | jq'        # Output app details in JSON
alias acdwatch='watch -n 5 argocd app list'       # Continuously watch app status

# ArgoCD Project Management
alias acdproj='argocd proj'                       # Base command for ArgoCD projects
alias acdprojlist='argocd proj list'              # List all projects
alias acdprojcreate='argocd proj create'          # Create a new project
alias acdprojdelete='argocd proj delete'          # Delete a project

# ArgoCD Repo Management
alias acdrepo='argocd repo'                       # Base command for repositories
alias acdrepolist='argocd repo list'              # List all configured repositories
alias acdrepoadd='argocd repo add'                # Add a new repository
alias acdrepoupdate='argocd repo update'          # Update repository settings
alias acdrepoprune='argocd repo prune'            # Remove unused repositories

# ────────────────────────────────────────────────────────────────

EOF
    echo "ArgoCD Aliases added successfully!"
fi

# Reload bashrc to apply aliases
source ~/.bashrc
