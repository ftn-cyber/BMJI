#!/data/data/com.termux/files/usr/bin/bash
# NEXFETCH — System Info for Next Terminal

# Logo ASCII NEXT
cat << "EOF"
   _   _           _____         _   
  | \ | | _____  _|  ___|__ _ __ | |_ 
  |  \| |/ _ \ \/ / |_ / _ \ '_ \| __|
  | |\  |  __/>  <|  _|  __/ | | | |_ 
  |_| \_|\___/_/\_\_|  \___|_| |_|\__|
                                      
EOF

# Info Sistem
echo "OS: $(uname -o) $(uname -m)"
echo "Kernel: $(uname -r)"
echo "Shell: $SHELL"
echo "Terminal: Next Terminal"
if command -v nproc &> /dev/null; then
echo "CPU: $(nproc) core"
fi
if [ -f /proc/meminfo ]; then
mem_total=$(grep MemTotal /proc/meminfo | awk '{printf "%.0f GB", $2/1024/1024}')
echo "RAM: $mem_total"
fi
echo "Uptime: $(uptime -p 2>/dev/null || echo 'Tidak tersedia')"
