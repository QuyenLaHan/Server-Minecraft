#!/usr/bin/env bash
set -e

JAR="purpur-1.20.4.jar"

#Download Purpur if missing

if [ ! -f "$JAR" ]; then
echo "Downloading Purpur $JAR..."
wget -q -O "$JAR" https://api.purpurmc.org/v2/purpur/1.20.4/latest/download
fi

echo "Starting Purpur server..."

#Export environment to suppress warnings

export TERM=xterm-256color

#Run with container flags and memory limits

exec java -Djdk.internal.platform.cgroup.disable=true -XX:-UseContainerSupport -Djava.awt.headless=true -Dterminal.jline=false -Xms512M -Xmx1G -XX:+UseG1GC -jar "$JAR" nogui

