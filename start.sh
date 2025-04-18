#!/bin/bash

# Tải Purpur nếu chưa có
if [ ! -f purpur-1.20.4.jar ]; then
  echo "Đang tải Purpur 1.20.4 bằng wget..."
  wget -O purpur-1.20.4.jar https://api.purpurmc.org/v2/purpur/1.20.4/latest/download
fi

# Chạy server
java -Xms1G -Xmx1G -jar purpur-1.20.4.jar nogui
