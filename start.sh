#!/usr/bin/env bash
set -e

JAR="purpur-1.20.4.jar"

if [ ! -f "$JAR" ]; then
  echo "Downloading Purpur $JAR..."
  wget -q -O "$JAR" https://api.purpurmc.org/v2/purpur/1.20.4/latest/download
fi

echo "Starting Purpur server..."

export TERM=xterm-256color

# Start server
exec java \
  -Djdk.internal.platform.cgroup.disable=true \
  -XX:-UseContainerSupport \
  -Djava.awt.headless=true \
  -Dterminal.jline=false \
  -Xms2G -Xmx2G \
  -XX:+UseG1GC \
  -jar "$JAR" nogui &

# Follow logs
tail -f logs/latest.log
