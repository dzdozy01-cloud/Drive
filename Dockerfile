WORKDIR /app

# Clone the repository
RUN apt-get update && apt-get install -y git && \
    git clone https://github.com/tapframe/NuvioStreamsAddon.git .

# Install dependencies
RUN npm install

# Hugging Face requires port 7860
ENV PORT=7860
EXPOSE 7860

# Start the server
CMD ["node", "server.js"]
