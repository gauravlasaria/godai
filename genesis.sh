#!/data/data/com.termux/files/usr/bin/bash

echo "🌍 Starting GODAI Genesis Evolution Phase..."
apt update && apt upgrade -y
pkg install -y git curl wget python nodejs php unzip

echo "✅ Base packages installed."

# Create folders
mkdir -p ~/godai/uploads ~/godai/logs ~/godai/public

# Pull latest GodAI repo
git clone https://github.com/gauravlasaria/godai.git ~/godai_repo || (cd ~/godai_repo && git pull)

# Setup memory & income module placeholders
touch ~/godai/memory.log
echo "₹0" > ~/godai/income.txt

# Launch info
echo "🚀 GODAI Genesis Initialized"
echo "📂 Uploads: ~/godai/uploads"
echo "🧠 Memory Log: ~/godai/memory.log"
echo "💸 Income: ₹0 (start phase)"

# Optional: Launch live dashboard (future HTML script)
termux-open-url https://gauravlasaria.github.io/godai/404: Not Found
