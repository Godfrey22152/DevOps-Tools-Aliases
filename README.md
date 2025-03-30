# Permanent DevOps Tools Aliases

## Overview
This repository provides a collection of **permanent aliases** for various DevOps tools, making command-line workflows faster and more efficient. These aliases help reduce keystrokes and improve productivity by simplifying long or frequently used commands.


## Repository Structure

```
DevOps-Aliases/
│── aliases/
│   ├── [kubernetes-aliases.sh](aliases/kubernetes-aliases.sh)
│   ├── [docker-aliases.sh](aliases/docker-aliases.sh)
│   ├── [linux-aliases.sh](aliases/linux-aliases.sh)
│   ├── [git-aliases.sh](aliases/git-aliases.sh)
│   ├── [terraform-aliases.sh](aliases/terraform-aliases.sh)
│   ├── [ansible-aliases.sh](aliases/ansible-aliases.sh)
│   ├── [helm-aliases.sh](aliases/helm-aliases.sh)
│   ├── [networking-aliases.sh](aliases/networking-aliases.sh)
│   ├── [argo-rollouts-aliases.sh](aliases/argo-rollouts-aliases.sh)
│   ├── [argocd-aliases.sh](aliases/argocd-aliases.sh)
│   ├── [miscellaneous.sh](aliases/miscellaneous.sh)
│── [README.md](README.md)
│── [setup.sh](setup.sh)
```

- **[aliases/](aliases)** → Contains shell scripts with aliases for different DevOps tools.
- **[setup.sh](setup.sh)** → A script to add all aliases to `~/.bashrc` at once.
- **README.md** → Documentation on installation and usage.

## Installation & Usage
### **1. Clone the Repository**
```sh
git clone https://github.com/Godfrey22152/DevOps-Tools-Aliases.git
cd DevOps-Tools-Aliases
```

### **2. Apply the Aliases**
To add all aliases permanently, run:
```sh
sudo chmod +x setup.sh
source setup.sh
```
This will append all aliases to your `~/.bashrc` file.

- The **[setup.sh](setup.sh)** script is designed to automate the addition of all the **[DevOps tools aliases](aliases/)** in the directory to the shell environment. 

### What the Script Does
1. **Iterates through all alias scripts** located in the `aliases/` directory.
2. **Executes each alias script**, checking if aliases already exist in `~/.bashrc`.
3. **Prevents duplicate entries** by verifying if aliases are already added.
4. **Provides meaningful feedback**:
   - If new aliases are added, it confirms the addition.
   - If all aliases already exist, it notifies the user instead of giving a false success message.

### Expected Output
If all aliases are newly added:
```bash
Setting up DevOps Aliases...
Executing aliases/ansible-aliases.sh...
Adding Ansible Aliases to ~/.bashrc...
Ansible Aliases added successfully!
Executing aliases/argo-rollouts-aliases.sh...
Adding Argo Rollouts Aliases to the ~/.bashrc...
Argo Rollouts Aliases added successfully!
Executing aliases/argocd-aliases.sh...
Adding ArgoCD Aliases to the ~/.bashrc...
ArgoCD Aliases added successfully!
Executing aliases/docker-aliases.sh...
Adding Docker and Container Aliases to the ~/.bashrc...
Docker and Container Aliases added successfully!
Executing aliases/git-aliases.sh...
Adding Git Aliases to the ~/.bashrc...
Git Aliases added successfully!
Executing aliases/helm-aliases.sh...
Adding Helm Aliases to the ~/.bashrc...
Helm Aliases added successfully!
Executing aliases/kubernetes-aliases.sh...
Adding Kubernetes Aliases to the ~/.bashrc...
Kubernetes Aliases added successfully!
Executing aliases/linux-aliases.sh...
sudo apt install deborphan
Adding Linux and System Utility Aliases to the ~/.bashrc...
Linux and System Utility Aliases added successfully!
Executing aliases/networking-aliases.sh...
Adding Networking Aliases to the ~/.bashrc...
Networking Aliases added successfully!
Executing aliases/terraform-aliases.sh...
Adding Terraform Aliases Aliases to the ~/.bashrc...
Terraform Aliases added successfully!
All new aliases have been added successfully!
```

If no new aliases were added because they already exist:
```bash
Setting up DevOps Aliases...
Executing aliases/ansible-aliases.sh...
Ansible Aliases already exist in ~/.bashrc
Executing aliases/argo-rollouts-aliases.sh...
Argo Rollouts Aliases already exist in the ~/.bashrc
Executing aliases/argocd-aliases.sh...
ArgoCD Aliases already exist in the ~/.bashrc
Executing aliases/docker-aliases.sh...
Docker and Container Aliases already exist in the ~/.bashrc
Executing aliases/git-aliases.sh...
Git Aliases already exist in the ~/.bashrc
Executing aliases/helm-aliases.sh...
Helm Aliases already exist in the ~/.bashrc
Executing aliases/kubernetes-aliases.sh...
Kubernetes Aliases already exist in the ~/.bashrc
Executing aliases/linux-aliases.sh...
Linux and System Utility Aliases already exist in the ~/.bashrc
Executing aliases/networking-aliases.sh...
Networking Aliases already exist in the ~/.bashrc
Executing aliases/terraform-aliases.sh...
Terraform Aliases already exist in the ~/.bashrc
No new aliases were added. All aliases already exist in ~/.bashrc.
```

---

## Available Aliases
### **[Kubernetes Aliases](aliases/kubernetes-aliases.sh)**
This section provides a list of Useful and essential **[Kubernetes Aliases]** for managing a Kubernetes cluster efficiently. If you don't want to add all **[Aliases](aliases)** in the directory to your shell environment but wants to add only the **Kubernetes Aliases**, run this one-liner to add them permanently to your `~/.bashrc` file:   
```sh
cat <<EOF >> ~/.bashrc

# ────────────────────────────────────────────────────────────────
# Kubernetes Aliases
# ────────────────────────────────────────────────────────────────
alias k='kubectl'
alias kg='kubectl get'
alias kgp='kubectl get pods -o wide'
alias kgn='kubectl get nodes -o wide'
alias kgs='kubectl get svc -o wide'
alias kgd='kubectl get deploy -o wide'
alias kgcm='kubectl get configmap'
alias kging='kubectl get ingress -A'
alias kgns='kubectl get namespaces'
alias kgsts='kubectl get statefulsets'
alias kgds='kubectl get daemonsets'
alias kgrs='kubectl get replicasets'
alias kgcj='kubectl get cronjobs'
alias kgjob='kubectl get jobs'

alias kd='kubectl describe'
alias kdp='kubectl describe pod'
alias kdn='kubectl describe node'
alias kds='kubectl describe svc'
alias kdd='kubectl describe deploy'

alias kl='kubectl logs'
alias klf='kubectl logs -f'
alias ke='kubectl exec -it'

alias ka='kubectl apply -f'
alias kdelf='kubectl delete -f'
alias kdelp='kubectl delete pod'
alias kdeln='kubectl delete node'
alias kdels='kubectl delete svc'
alias kdeld='kubectl delete deploy'

alias kctx='kubectl config use-context'
alias kns='kubectl config set-context --current --namespace'

# Custom Output Formats
alias kgwide='kubectl get -o wide'
alias kgyaml='kubectl get -o yaml'
alias kgjson='kubectl get -o json'

# Kubernetes System Info
alias ksys='kubectl cluster-info'
alias ksysdump='kubectl cluster-info dump'
alias kver='kubectl version --short'
alias kapi='kubectl api-resources'

# Helm Aliases
alias h='helm'
alias hs='helm search repo'
alias hi='helm install'
alias hu='helm upgrade --install'
alias hl='helm list'
alias hr='helm rollback'
alias hdel='helm uninstall'

# ArgoCD Aliases
alias acd='argocd'
alias acdl='argocd login'
alias acdapp='argocd app'
alias acdappg='argocd app get'
alias acdapps='argocd app list'
alias acdappsync='argocd app sync'
alias acdappdel='argocd app delete'
alias acdappset='argocd app set'
alias acdappup='argocd app update'
alias acdapphist='argocd app history'
alias acdapprollback='argocd app rollback'
alias acdproj='argocd proj'
alias acdprojs='argocd proj list'
alias acdprojget='argocd proj get'
alias acdprojdel='argocd proj delete'
alias acdprojset='argocd proj set'

# Argo Rollouts Aliases
alias ar='kubectl argo rollouts'
alias arlogs='kubectl argo rollouts logs'
alias arget='kubectl argo rollouts get rollout'
alias argetana='kubectl argo rollouts get analysisrun'
alias argetexp='kubectl argo rollouts get experiment'
alias arhist='kubectl argo rollouts history'
alias arpause='kubectl argo rollouts pause'
alias arrun='kubectl argo rollouts run'
alias arrestart='kubectl argo rollouts restart'
alias arpromote='kubectl argo rollouts promote'
alias arabort='kubectl argo rollouts abort'
alias arrescue='kubectl argo rollouts retry'
# ────────────────────────────────────────────────────────────────
EOF

# Reload the aliases
source ~/.bashrc
```

#### Key Highlights

##### 🚀 Kubernetes Aliases
- **`k`** → Short for `kubectl`
- **`kg*`** → Get resources (`pods`, `nodes`, `services`, `deployments`, `configmaps`, `ingress`, etc.)
- **`kd*`** → Describe resources (`pods`, `nodes`, `services`, `deployments`, etc.)
- **`kl`** → Fetch logs, `klf` follows logs live
- **`ka/kdelf`** → Apply and delete YAML manifests
- **`kdel*`** → Delete specific resources (pods, nodes, services, deployments)
- **`kctx/kns`** → Switch contexts and namespaces easily
- **`ksys`** → View cluster information and API resources

##### 🛠 Helm Aliases
- **`h`** → Short for `helm`
- **`hs`** → Search Helm charts
- **`hi`** → Install a Helm release
- **`hu`** → Upgrade (or install) a Helm release
- **`hl`** → List installed Helm releases
- **`hr`** → Rollback a Helm release
- **`hdel`** → Uninstall a Helm release

##### 🚀 ArgoCD Aliases
- **`acd`** → Short for `argocd`
- **`acdapp*`** → Manage ArgoCD applications (list, get, sync, delete, set, update, history, rollback)
- **`acdproj*`** → Manage ArgoCD projects (list, get, delete, set)

##### 📌 Argo Rollouts Aliases
- **`ar`** → Short for `kubectl argo rollouts`
- **`arget*`** → Get rollout, analysis runs, or experiments
- **`arhist`** → View rollout history
- **`arpause`** → Pause a rollout
- **`arrun`** → Manually trigger a rollout
- **`arrestart`** → Restart a rollout
- **`arpromote`** → Promote a canary release
- **`arabort`** → Abort a rollout
- **`arrescue`** → Retry a rollout

---

### **[Docker and Container Aliases](aliases/docker-aliases.sh)**
Run this in your terminal to append only the **Docker Aliases** to your `~/.bashrc` and apply them immediately:

```sh
cat <<EOF >> ~/.bashrc

# ────────────────────────────────────────────────────────────────
# Docker and Container Aliases
# ────────────────────────────────────────────────────────────────

# General Docker commands
alias d='docker'
alias dc='docker-compose'

# Manage Containers
alias dps='docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}"'
alias dpsa='docker ps -a'
alias drm='docker rm -f'
alias dstop='docker stop'
alias dstart='docker start'
alias drestart='docker restart'
alias dexec='docker exec -it'
alias dlogs='docker logs -f'
alias drun='docker run -it --rm'              # Run a temporary container
alias dprune='docker system prune -a'         # Clean up unused images/containers

# Manage Images
alias di='docker images'
alias dpull='docker pull'
alias dbuild='docker build -t'
alias drmi='docker rmi'
alias dclean='docker system prune -af'

# Manage Volumes and Networks
alias dvol='docker volume ls'
alias dnet='docker network ls'
alias dvolrm='docker volume rm'
alias dnetrm='docker network rm'

# Docker Compose
alias dcu='docker-compose up -d'
alias dcd='docker-compose down'
alias dcrestart='docker-compose restart'
alias dclogs='docker-compose logs -f'
alias dcexec='docker-compose exec'
alias dcb='docker-compose build'
# ────────────────────────────────────────────────────────────────
EOF

# Reload the aliases
source ~/.bashrc
```

#### Key Highlights

##### General Docker Commands
- `d` → Shortcut for `docker`
- `dc` → Shortcut for `docker-compose`

##### Managing Containers
- `dps` → Display running containers in a table format with ID, Name, Status, and Ports
- `dpsa` → Show all containers, including stopped ones
- `drm` → Force remove a container
- `dstop` → Stop a container
- `dstart` → Start a container
- `drestart` → Restart a container
- `dexec` → Access a running container interactively
- `dlogs` → Follow logs of a running container
- `drun` → Run a temporary container
- `dprune` → Remove unused containers, networks, images, and build cache

##### Managing Images
- `di` → List available Docker images
- `dpull` → Pull an image from Docker Hub
- `dbuild` → Build an image with a specified tag
- `drmi` → Remove a Docker image
- `dclean` → Force remove all unused Docker images

##### Managing Volumes and Networks
- `dvol` → List all Docker volumes
- `dnet` → List all Docker networks
- `dvolrm` → Remove a specified Docker volume
- `dnetrm` → Remove a specified Docker network

##### Docker Compose Commands
- `dcu` → Start services in detached mode
- `dcd` → Stop and remove all containers defined in `docker-compose.yml`
- `dcrestart` → Restart all services in `docker-compose.yml`
- `dclogs` → Follow logs from Docker Compose services
- `dcexec` → Run a command inside a service container
- `dcb` → Build or rebuild services

---

### **[Linux and System Utility Aliases](aliases/linux-aliases.sh)**
Run this in your terminal to append only the **Linux and System Utility Aliases** to `~/.bashrc` and apply them immediately:

```sh
cat <<EOF >> ~/.bashrc

# ────────────────────────────────────────────────────────────────
# Linux and System Utility Aliases
# ────────────────────────────────────────────────────────────────

# Navigation and Listing
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='clear'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF --color=auto'
alias lt='ls --human-readable --size -1 -S --classify'
alias lsd='ls -l | grep "^d"' # List only directories

# File Management
alias rm='rm -i'  # Prompt before removing files
alias mv='mv -i'  # Prevent overwriting files
alias cp='cp -i'  # Prevent overwriting files
alias mkdir='mkdir -pv'  # Create parent directories as needed
alias tarx='tar -xvf'
alias tarz='tar -zcvf'

# System Monitoring and Management
alias myip="ip -4 addr show enp0s8 | grep -oP '(?<=inet\s)\d+(\.\d+){3}'"
alias topcpu='ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head'
alias topmem='ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head'
alias dfh='df -h'  # Show disk space usage
alias duh='du -sh' # Show disk usage of a directory
alias free='free -m' # Show memory usage in MB
alias psg='ps aux | grep -v grep | grep -i' # Find a running process

# Network and Connectivity
alias pingg='ping -c 5 8.8.8.8'  # Ping Google DNS
alias ports='netstat -tulnp' # List open ports
alias mynet='ip -c a' # Show network interfaces
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -' # Test internet speed
alias xip='curl icanhazip.com'
alias ssha='eval $(ssh-agent) && ssh-add' #SSH Agent Key Add

# Package Management
alias update='sudo apt update && sudo apt upgrade -y'  # Update system
alias install='sudo apt install -y'
alias remove='sudo apt remove -y'
alias cleanup='sudo apt autoremove -y && sudo apt autoclean'

# System Power and Reboots
alias reboot='sudo reboot'
alias shutdown='sudo shutdown -h now'
alias sysctlr='sudo systemctl restart'
alias sysctlst='sudo systemctl status'

# Shortcuts for File Editing
alias v='vim'
alias s='sudo nano'
# ────────────────────────────────────────────────────────────────
EOF

# Reload the aliases
source ~/.bashrc
```

#### Key Highlights
This section provides a list of useful Linux and system utility aliases to enhance efficiency when working with the command line. These aliases simplify navigation, file management, system monitoring, network troubleshooting, package management, and system control.

##### Navigation and Listing
- `..` – Move up one directory
- `...` – Move up two directories
- `....` – Move up three directories
- `c` – Clear the terminal
- `l` – List files in a compact format
- `la` – List all files, including hidden ones
- `ll` – List detailed file information with color
- `lt` – List files sorted by size in human-readable format
- `lsd` – List only directories

##### File Management
- `rm` – Remove files with confirmation prompt
- `mv` – Move/rename files with overwrite protection
- `cp` – Copy files with overwrite protection
- `mkdir` – Create directory including parent directories
- `tarx` – Extract tar files
- `tarz` – Create compressed tar archive

##### System Monitoring and Management
- `myip` – Show current system IP address
- `topcpu` – Show top CPU-consuming processes
- `topmem` – Show top memory-consuming processes
- `dfh` – Display disk space usage
- `duh` – Show disk usage for a directory
- `free` – Display memory usage in MB
- `psg <process>` – Find a running process

##### Network and Connectivity
- `pingg` – Ping Google DNS (5 packets)
- `ports` – List open network ports
- `mynet` – Show active network interfaces
- `speedtest` – Test internet speed
- `xip` – Get public IP address
- `ssha` – Start SSH agent and add keys

##### Package Management
- `update` – Update and upgrade system packages
- `install <package>` – Install a package
- `remove <package>` – Remove a package
- `cleanup` – Remove unnecessary packages
- `deb` – Remove orphaned packages

##### System Power and Reboots
- `reboot` – Restart the system
- `shutdown` – Shutdown the system immediately
- `sysctlr <service>` – Restart a system service
- `sysctlst <service>` – Check the status of a system service

##### Shortcuts for File Editing
- `v` – Open Vim text editor
- `s` – Open Nano text editor with sudo permissions

---


### **[Git](aliases/git-aliases.sh)**
This section provides a concise list of essential Git aliases to enhance your workflow efficiency. These aliases simplify frequently used Git commands, allowing for quicker navigation, branching, committing, and repository management.
Run this in your terminal to append only the **Git Aliases** to `~/.bashrc` and apply them immediately:

```sh
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

# Reload the aliases
source ~/.bashrc
```

#### Key Highlights

##### Basic Git Commands
- **`g`** → Short for `git`
- **`ga`** → `git add` (Add files to staging)
- **`gaa`** → `git add --all` (Add all files, tracked & untracked)
- **`gc`** → `git commit -m` (Commit with a message)
- **`gca`** → `git commit --amend -m` (Amend the last commit message)
- **`gcl`** → `git clone` (Clone a repository)

##### Branching & Checkout
- **`gco`** → `git checkout` (Switch branches)
- **`gcb`** → `git checkout -b` (Create and switch to a new branch)
- **`gbr`** → `git branch` (List branches)
- **`gbd`** → `git branch -d` (Delete a branch)
- **`gbD`** → `git branch -D` (Force delete a branch)

##### Pull, Push & Merge
- **`gl`** → `git pull` (Pull latest changes)
- **`gp`** → `git push` (Push changes to remote)
- **`gpf`** → `git push --force` (Force push)
- **`gpsup`** → `git push --set-upstream origin` (Push branch & track upstream)
- **`gm`** → `git merge` (Merge branches)
- **`gpr`** → `git pull --rebase` (Pull with rebase)

##### Status, Logs & History
- **`gst`** → `git status -sb` (Show short status)
- **`glog`** → `git log --oneline --graph --decorate --all` (Pretty log view)
- **`glg`** → `git log --oneline --decorate --graph --all` (Colorful log graph)

##### Stash Management
- **`gsh`** → `git stash` (Stash changes)
- **`gsp`** → `git stash pop` (Apply last stashed changes)
- **`gsa`** → `git stash apply` (Apply stash without deleting)
- **`gsl`** → `git stash list` (Show stash list)
- **`gsr`** → `git stash drop` (Remove stash)

##### Reset & Undo
- **`grh`** → `git reset --hard` (Hard reset)
- **`grs`** → `git reset --soft` (Soft reset)
- **`gunwip`** → `git reset HEAD~1` (Undo last commit)
- **`gundo`** → `git reset --soft HEAD~1` (Undo last commit but keep changes)

##### Cleanup & Miscellaneous
- **`gclean`** → `git clean -fd` (Remove untracked files and directories)
- **`gch`** → `git cherry-pick` (Apply commit from another branch)
- **`gwip`** → `git add . && git commit -m "WIP"` (Save work in progress)

---


### **[Terraform Aliases](aliases/terraform-aliases.sh)**
Run this in your terminal to append only the **Terraform Aliases** to `~/.bashrc` and apply them immediately:

```sh
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

# Reload the aliases
source ~/.bashrc
```

#### Key Highlights

- **`tfi` (terraform init)** – Initializes a Terraform working directory.
- **`tfp` (terraform plan)** – Shows the execution plan before applying changes.
- **`tfa` (terraform apply -auto-approve)** – Applies the changes without confirmation.
- **`tfd` (terraform destroy -auto-approve)** – Destroys infrastructure automatically.
- **`tfv` (terraform validate)** – Validates Terraform configuration files.
- **`tfo` (terraform output)** – Displays Terraform outputs.
- **`tfw` (terraform workspace)** – Manages multiple Terraform workspaces.
- **`tff` (terraform fmt -recursive)** – Formats Terraform files.
- **`tfgraph`** – Generates a visual dependency graph.
- **`tfs` (terraform state)** – Manages the Terraform state.
- **`tfimport` (terraform import)** – Imports existing infrastructure into Terraform.
- **Feel free to customize these aliases to suit your workflow. 🚀**

---

### **[Ansible Aliases](aliases/ansible-aliases.sh)**
Run this in your terminal to append only the **Ansible Aliases** to `~/.bashrc` and apply them immediately:

```sh
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

# Reload the aliases
source ~/.bashrc
```
- **Feel free to customize these aliases to suit your workflow. 🚀**

---


### **[Helm Aliases](aliases/helm-aliases.sh)**
Run this in your terminal to append only the **Ansible Aliases** to `~/.bashrc` and apply them immediately:

```sh
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

# Reload the aliases
source ~/.bashrc
```
- **Feel free to customize these aliases to suit your workflow. 🚀**

---

### **[Networking Aliases](aliases/networking-aliases.sh)**
Run this in your terminal to append only the **Networking Aliases** to `~/.bashrc` and apply them immediately:

```sh
cat <<EOF >> ~/.bashrc

# ────────────────────────────────────────────────────────────────
# Networking Aliases
# ────────────────────────────────────────────────────────────────
alias ip4='ip -4 addr show'                 # Show IPv4 addresses
alias ip6='ip -6 addr show'                 # Show IPv6 addresses
alias ipr='ip route show'                   # Show routing table
alias ipneigh='ip neigh show'               # Show ARP table

# Ping & Connectivity Testing
alias ping='ping -c 5'                      # Limit pings to 5 requests
alias fastping='ping -c 100 -s.2'           # Fast ping with smaller packet size
alias pingsweep='for i in {1..254}; do ping -c 1 192.168.1.$i | grep "bytes from"; done'  # Scan active hosts in subnet

# DNS Aliases
alias ns='nslookup'                         # DNS lookup
alias dig='dig +short'                      # Get IP of domain
alias digall='dig +nocmd any +multiline +noall +answer'  # Get full DNS info
alias myip='curl -s ifconfig.me'            # Get your public IP
alias myip2='curl -s icanhazip.com'         # Alternative way to get public IP
alias privateip="ip -4 addr show enp0s8 | grep -oP '(?<=inet\s)\d+(\.\d+){3}'"  # Show only the IP address of enp0s8

# Traceroute & Latency
alias tr='traceroute'                       # Trace network route
alias mtr='mtr --report'                    # Enhanced traceroute with real-time analysis
alias tcpprobe='traceroute -T -p 443'       # Trace using TCP on port 443 (HTTPS)
alias netlatency='ping -c 10 8.8.8.8'       # Check network latency to Google DNS

# Network Monitoring
alias netstat='netstat -tulnp'              # Show open ports & services
alias ss='ss -tulnp'                        # Faster alternative to netstat
alias tcpdump='sudo tcpdump -i any'         # Capture all traffic on any interface
alias watchnet='watch -n1 ss -tulnp'        # Monitor network connections live

# Interface & Speed Test
alias ifc='ip -br a'                        # Show network interfaces in a compact format
alias netup='ip link set eth0 up'           # Bring up network interface
alias netdown='ip link set eth0 down'       # Bring down network interface
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -'  # Run a speed test

# ARP & MAC Address
alias mac='ip link show | grep link/ether'  # Show MAC addresses
alias arp='arp -a'                          # Show ARP cache

# WiFi & Wireless Tools (if applicable)
alias wifi='nmcli dev wifi'                 # List available WiFi networks
alias wifistatus='iwconfig 2>/dev/null | grep -E "SSID|Signal level"'  # Show WiFi SSID and Signal Strength

# Port Scanning
alias openports='sudo netstat -tulpn | grep LISTEN'  # Show open ports
alias scanlocal='nmap -sn 192.168.1.0/24'            # Scan live hosts in a local subnet
alias scanports='nmap -p 1-65535 -T4 -A -v'          # Full port scan
# ────────────────────────────────────────────────────────────────
EOF

# Reload the aliases
source ~/.bashrc
```
- **Feel free to customize these aliases to suit your workflow. 🚀**

---


### **[Argo Rollout Aliases](aliases/argo-rollouts-aliases.sh)**
Run this in your terminal to append only the **Argo Rollout Aliases** to `~/.bashrc` and apply them immediately:

```sh
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

# Reload the aliases
source ~/.bashrc
```
- **Feel free to customize these aliases to suit your workflow. 🚀**

---

### **[ArgoCD Aliases](aliases/argocd-aliases.sh)**
Run this in your terminal to append only the **ArgoCD Aliases** to `~/.bashrc` and apply them immediately:

```sh
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
alias acdsyncf='argocd app sync --force'          # Force synchronization of an application
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

# Reload the aliases
source ~/.bashrc
```
- **Feel free to customize these aliases to suit your workflow. 🚀**

---

### **Miscellaneous (aliases/miscellaneous.sh)**
```sh
alias cls='clear'
alias s='sudo nano'
```

## Contributing
Feel free to contribute by adding more aliases or improving existing ones. Fork the repository, make changes, and submit a pull request.

## License
MIT License

