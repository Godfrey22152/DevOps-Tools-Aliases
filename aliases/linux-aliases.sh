if grep -q "# Linux and System Utility Aliases" ~/.bashrc; then
    echo "Linux and System Utility Aliases already exist in the ~/.bashrc"
else
    echo "Adding Linux and System Utility Aliases to the ~/.bashrc..."
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
    echo "Linux and System Utility Aliases added successfully!"
fi

# Reload bashrc to apply aliases
source ~/.bashrc
