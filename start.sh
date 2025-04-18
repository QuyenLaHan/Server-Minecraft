#!/usr/bin/env bash
set -e

# Tên file Purpur jar
JAR="purpur-1.20.4.jar"

# 1) Nếu chưa có JAR, tự tải về
if [ ! -f "$JAR" ]; then
  echo "Downloading Purpur $JAR..."
  wget -q -O "$JAR" https://api.purpurmc.org/v2/purpur/1.20.4/latest/download
fi

# 2) Chạy server với flags tắt container support và giới hạn RAM
echo "Starting Purpur server..."
exec java \
  -Djdk.internal.platform.cgroup.disable=true \
  -XX:-UseContainerSupport \
  -Xms512M -Xmx1G \
  -XX:+UseG1GC \
  -jar "$JAR" nogui
