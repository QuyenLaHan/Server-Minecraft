FROM openjdk:17-jdk-slim

# cài wget
RUN apt-get update && apt-get install -y wget

# GIẢ LẬP TERM để Paper không phàn nàn
ENV TERM=xterm-256color

# Nếu muốn truyền thêm JVM flags qua JAVA_TOOL_OPTIONS
ENV JAVA_TOOL_OPTIONS="-Djdk.internal.platform.cgroup.disable=true -XX:-UseContainerSupport -Djava.awt.headless=true -Dterminal.jline=false"

WORKDIR /app
COPY . .
RUN chmod +x start.sh

CMD ["./start.sh"]
