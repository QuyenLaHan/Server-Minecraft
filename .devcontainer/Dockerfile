FROM mcr.microsoft.com/vscode/devcontainers/java:17

#Install wget for downloading Purpur

RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

Expose Minecraft port

EXPOSE 25565

#Start Purpur server by default when container starts

CMD ["./start.sh"]
