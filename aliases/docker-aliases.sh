if grep -q "# Docker and Container Aliases" ~/.bashrc; then
    echo "Docker and Container Aliases already exist in the ~/.bashrc"
else
    echo "Adding Docker and Container Aliases to the ~/.bashrc..."
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
    echo "Docker and Container Aliases added successfully!"
fi

# Reload bashrc to apply aliases
source ~/.bashrc
