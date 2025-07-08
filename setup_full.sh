#!/data/data/com.termux/files/usr/bin/bash

# ✅ Set DNS
echo -e "nameserver 1.1.1.1\nnameserver 8.8.8.8" > $PREFIX/etc/resolv.conf

# 🔁 Prevent sleep
termux-wake-lock

# ☁️ Cloudflare Tunnel
nohup cloudflared tunnel --url http://localhost:7860 >> ~/godai/logs/cloudflared.log 2>&1 &

# 🧠 Start GodAI main
nohup bash ~/godai/main.sh >> ~/godai/logs/scanner.log 2>&1 &
