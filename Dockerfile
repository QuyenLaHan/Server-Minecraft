FROM openjdk:17-jdk-slim
WORKDIR /app
COPY . .
RUN chmod +x start.sh
CMD ["./start.sh"]
