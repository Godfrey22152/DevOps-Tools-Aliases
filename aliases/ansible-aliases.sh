if grep -q "# Ansible Aliases" ~/.bashrc; then
    echo "Ansible Aliases already exist in ~/.bashrc"
else
    echo "Adding Ansible Aliases to ~/.bashrc..."
    cat <<EOF >> ~/.bashrc

# ────────────────────────────────────────────────────────────────
# Ansible Aliases
# ────────────────────────────────────────────────────────────────

alias a='ansible'                                 # Shorter Ansible command
alias ap='ansible-playbook'                       # Run an Ansible playbook
alias ac='ansible all -m command -a'              # Run command on all hosts
alias ai='ansible-inventory --list'               # Show inventory
alias ah='ansible all -m ping'                    # Ping all hosts
alias af='ansible all -m setup'                   # Gather facts
alias apc='ansible-playbook --check'              # Dry-run mode
alias apv='ansible-playbook --verbose'            # Run playbook with verbosity
alias apvv='ansible-playbook -vvv'                # Extra verbose mode
alias av='ansible --version'                      # Show version
alias al='ansible-lint'                           # Lint Ansible files
alias ag='ansible-galaxy'                         # Manage Ansible roles
alias agr='ansible-galaxy role install'           # Install an Ansible role
alias agc='ansible-galaxy collection install'     # Install an Ansible collection
alias ak='ansible-vault'                          # Manage encrypted files
alias akc='ansible-vault create'                  # Create a new encrypted file
alias ake='ansible-vault edit'                    # Edit an encrypted file
alias akd='ansible-vault decrypt'                 # Decrypt a file
alias ake='ansible-vault encrypt'                 # Encrypt a file
alias an='ansible-navigator'                      # Use ansible-navigator for interactive playbook execution

# ────────────────────────────────────────────────────────────────
EOF
    echo "Ansible Aliases added successfully!"
fi

# Reload bashrc to apply aliases
source ~/.bashrc
