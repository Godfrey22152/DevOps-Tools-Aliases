if grep -q "# Linux and System Utility Aliases" ~/.bashrc; then
    echo "Linux and System Utility Aliases already exist in the ~/.bashrc"
else
    echo "Adding Linux and System Utility Aliases to the ~/.bashrc..."
    cat <<EOF >> ~/.bashrc

# ────────────────────────────────────────────────────────────────
# Linux and System Utility Aliases
# ────────────────────────────────────────────────────────────────

# -------------------------------------------------------------------
# File Operations & Navigation
# -------------------------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='clear'
alias tree='exa --tree'                     # Directory tree
alias cpex='rsync -ah --progress --stats'   # Advanced copy with progress
alias rm='rm -i'                            # Prompt before removing files
alias mv='mv -i'                            # Prevent overwriting files
alias cp='cp -i'                            # Prevent overwriting files
alias mkdir='mkdir -pv'                     # Create parent directories as needed
alias tarx='tar -xvf'
alias tarz='tar -zcvf'

# -------------------------------------------------------------------
# System Monitoring & Process Management
# -------------------------------------------------------------------
alias df='df -h'                            # Human-readable disk usage
alias ds='du -h -d 1'                       # Directory size summary
alias sizeof='du -sh'                       # Get size of file/directory
alias cpuinfo='lscpu'                       # CPU architecture info
alias list-ports='ss -tulpn'                # Show listening ports
alias open-ports='ss -tulwn'                # List all open ports
alias ptree='pstree -p'                     # Show process tree with PIDs
alias killzombie='ps -eal | awk '\''{ if ($2 == "Z") { print $4 } }'\'' | xargs sudo kill -9' # Find and forcefully kill zombie processes
alias topcpu='ps -eo pid,comm,%cpu --sort=-%cpu | head -11' # List top 10 CPU-consuming processes
alias topmem='ps -eo pid,comm,%mem --sort=-%mem | head -11' # List top 10 memory-consuming processes

# -------------------------------------------------------------------
# Networking & Connectivity
# -------------------------------------------------------------------
alias myip='curl icanhazip.com'             # Public IPv4
alias myip6='curl icanhazip.com/ipv6'       # Public IPv6
alias flushdns='sudo systemd-resolve --flush-caches'  # Flush DNS cache
alias ping='ping -c 5'                      # Limit ping to 5 packets
alias pingg='ping -c 5 8.8.8.8'             # Ping Google DNS
alias tracepath='tracepath -n'              # Disable reverse DNS lookup
alias netusage='nethogs'                    # Per-process network usage
alias routes='ip route show'                # Show routing table
alias arplist='ip neigh'                    # Show ARP table
alias ifstats='ifstat -t -l'                # Live network interface stats
alias ports='netstat -tulnp'                # List open ports
alias mynet='ip -c a'                       # Show network interfaces
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -' # Test internet speed
alias ssha='eval $(ssh-agent) && ssh-add'   #SSH Agent Key Add

# -------------------------------------------------------------------
# Security & Permissions
# -------------------------------------------------------------------
alias perm='stat -c "%a %n"'                                   # Show permissions in octal
alias root='sudo -i'                                           # Get root shell
alias suroot='sudo su -'                                       # Switch to root
alias own='sudo chown $USER:$USER'                             # Change ownership to the current user
alias ownr='sudo chown -R $USER:$USER'                         # Recursively change ownership to current user
alias chx='chmod +x'                                           # Make executable
alias audit-suid='find / -perm -4000 -type f -ls 2>/dev/null'  # Find SUID files
alias audit-sgid='find / -perm -2000 -type f -ls 2>/dev/null'  # Find SGID files
alias fail2ban-log='sudo tail -f /var/log/fail2ban.log'        # Monitor fail2ban
alias ufw-status='sudo ufw status numbered'                    # UFW firewall status
alias securefolder='chmod -R 700'                              # Secure a folder (Only owner has access)
alias lockuser='sudo passwd -l'                                # Lock a user account (Usage: lockuser username)
alias unlockuser='sudo passwd -u'                              # Unlock a user account (Usage: unlockuser username)
alias passwdexp='sudo chage -l'                                # Check password expiry (Usage: passwdexp username)
alias encrypt='gpg -c'                                         # Encrypt a file (Usage: encrypt filename)
alias decrypt='gpg -d'                                         # Decrypt a file (Usage: decrypt filename.gpg)'

# -------------------------------------------------------------------
# Package Management (Multi-Distro Support)
# -------------------------------------------------------------------
# Debian/Ubuntu
alias update='sudo apt update && sudo apt upgrade -y'
alias install='sudo apt install -y'
alias remove='sudo apt remove -y'
alias cleanup='sudo apt autoremove -y && sudo apt autoclean'


# RHEL/CentOS
alias yum-update='sudo yum update -y'
alias yum-clean='sudo yum clean all'

# Fedora
alias dnf-update='sudo dnf upgrade --refresh'
alias dnf-clean='sudo dnf clean all'

# Arch
alias pacup='sudo pacman -Syu'                                        # Full system update
alias pacclean='sudo pacman -Sc && sudo pacman -Rns $(pacman -Qtdq)'  # Clean orphans

# -------------------------------------------------------------------
# Text Processing & Logs
# -------------------------------------------------------------------
alias grep='grep --color=auto'              # Colorized grep
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias tailf='tail -f'                       # Follow log files
alias logerr='grep -i err'                  # Quick error search
alias logwarn='grep -i warn'                # Find warnings
alias count='wc -l'                         # Count lines
alias csv='column -t -s,'                   # Format CSV/TSV
alias jsonfmt='python -m json.tool'         # Pretty-print JSON

# -------------------------------------------------------------------
# System Power and Reboots
# -------------------------------------------------------------------
alias reboot='sudo reboot'
alias shutdown='sudo shutdown -h now'
alias sysctlr='sudo systemctl restart'
alias sysctlst='sudo systemctl status'

# -------------------------------------------------------------------
# Shortcuts for File Editing
# -------------------------------------------------------------------
alias v='vim'
alias s='sudo nano'

# -------------------------------------------------------------------
# Utilities & Productivity
# -------------------------------------------------------------------
alias now='date +"%T %Z %Y-%m-%d"'         # Current time/date
alias epoch='date +%s'                     # Unix timestamp
alias calc='bc -l'                         # CLI calculator
alias weather='curl wttr.in'               # Weather forecast
alias qr='qrencode -t ANSI'                # Generate QR code in terminal
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -'
alias crypto='curl rate.sx'                # Cryptocurrency rates
alias cheat='curl cheat.sh/'               # CLI cheat sheets

# -------------------------------------------------------------------
# System Maintenance
# -------------------------------------------------------------------
alias journal-clean='journalctl --vacuum-time=2d'  # Clean systemd journals
alias logrotate-force='sudo logrotate -vf /etc/logrotate.conf'
alias fw-restart='sudo systemctl restart firewalld && sudo firewall-cmd --reload'

# ────────────────────────────────────────────────────────────────
EOF
    echo "Linux and System Utility Aliases added successfully!"
fi

# Reload bashrc to apply aliases
source ~/.bashrc
