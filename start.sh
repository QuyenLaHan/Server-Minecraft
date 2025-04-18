#!/bin/bash

# Nếu chưa có jar, tự tải về
if [ ! -f purpur-1.20.4.jar ]; then
  curl -o purpur-1.20.4.jar https://api.purpurmc.org/v2/purpur/1.20.4/latest/download
fi

java -Xms1G -Xmx1G -jar purpur-1.20.4.jar nogui
