FROM node:18-alpine

WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy the rest of the application source code
COPY . .

# Set environment variables for Hugging Face
ENV PORT=7860
EXPOSE 7860

# Command to start your addon
CMD ["node", "server.js"]
