if grep -q "# Networking Aliases" ~/.bashrc; then
    echo "Networking Aliases already exist in the ~/.bashrc"
else
    echo "Adding Networking Aliases to the ~/.bashrc..."
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
    echo "Networking Aliases added successfully!"
fi

# Reload bashrc to apply aliases
source ~/.bashrc
