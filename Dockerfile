# Use official Node.js runtime as parent image
FROM node:20-slim

# Set working directory inside container
WORKDIR /app

# Copy package files
COPY package.json ./

# Install dependencies (none in this case, but standard practice)
RUN npm install

# Copy the rest of the application files
COPY . .

# Hugging Face Spaces runs on port 7860 by default
ENV PORT=7860
EXPOSE 7860

# Command to run the application
CMD ["node", "server.js"]
