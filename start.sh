#!/bin/bash

echo "Đang kiểm tra server.jar..."

# Kiểm tra xem file server.jar đã tồn tại chưa
if [ ! -f "server.jar" ]; then
  echo "Không tìm thấy server.jar! Vui lòng thêm file vào thư mục."
  exit 1
fi

echo "Đang khởi động máy chủ Minecraft..."

# Chạy server với cấu hình tối ưu trong container
java \
  -Xms512M -Xmx512M \
  -Djdk.internal.platform.cgroup.disable=true \
  -XX:-UseContainerSupport \
  -Djava.awt.headless=true \
  -Dterminal.jline=false \
  -jar server.jar nogui
