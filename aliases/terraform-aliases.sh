if grep -q "# Terraform Aliases" ~/.bashrc; then
    echo "Terraform Aliases already exist in the ~/.bashrc"
else
    echo "Adding Terraform Aliases Aliases to the ~/.bashrc..."
    cat <<EOF >> ~/.bashrc

# ────────────────────────────────────────────────────────────────
# Terraform Aliases
# ────────────────────────────────────────────────────────────────

alias tf='terraform'                             # Shorter command for Terraform
alias tfi='terraform init'                       # Initialize Terraform
alias tfp='terraform plan'                       # Show execution plan
alias tfa='terraform apply -auto-approve'        # Apply changes without confirmation
alias tfai='terraform apply'                     # Apply changes (manual approval)
alias tfd='terraform destroy -auto-approve'      # Destroy infrastructure
alias tfdi='terraform destroy'                   # Destroy (manual approval)
alias tfv='terraform validate'                   # Validate Terraform files
alias tfo='terraform output'                     # Show outputs
alias tfw='terraform workspace'                  # Manage workspaces
alias tfwn='terraform workspace new'             # Create a new workspace
alias tfws='terraform workspace select'          # Select a workspace
alias tfwl='terraform workspace list'            # List all workspaces
alias tff='terraform fmt -recursive'             # Format all Terraform files
alias tfc='terraform console'                    # Open Terraform console
alias tfgraph='terraform graph | dot -Tpng > graph.png'  # Generate dependency graph
alias tfs='terraform state'                      # Manage Terraform state
alias tfsl='terraform state list'                # List state resources
alias tfsr='terraform state rm'                  # Remove resource from state
alias tfsm='terraform state mv'                  # Move resource in state
alias tfimport='terraform import'                # Import existing infra
alias tfunlock='terraform force-unlock'          # Force unlock Terraform state
alias tfver='terraform version'                  # Show Terraform version
alias tfprov='terraform providers'               # Show providers used in configuration
# ────────────────────────────────────────────────────────────────

EOF
    echo "Terraform Aliases added successfully!"
fi

# Reload bashrc to apply aliases
source ~/.bashrc
