FROM openjdk:17-jdk-slim

# Cài đặt wget vào container
RUN apt-get update && apt-get install -y wget

WORKDIR /app
COPY . .
RUN chmod +x start.sh

CMD ["./start.sh"]
