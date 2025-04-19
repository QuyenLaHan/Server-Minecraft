java \
  -Xms512M -Xmx512M \
  -Djdk.internal.platform.cgroup.disable=true \
  -XX:-UseContainerSupport \
  -Djava.awt.headless=true \
  -Dterminal.jline=false \
  -jar server.jar nogui
