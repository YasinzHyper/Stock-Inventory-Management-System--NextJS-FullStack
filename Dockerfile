# Use the official Node.js 20 Alpine image (more secure and up-to-date)
FROM node:20-alpine

# Install netcat for health checking and wget for HTTP health checks
RUN apk add --no-cache netcat-openbsd wget

# Set working directory
WORKDIR /app

# Copy package files
COPY package.json package-lock.json* ./

# Copy Prisma schema first (needed for postinstall script)
COPY prisma ./prisma

# Install dependencies with legacy peer deps to handle React version conflicts
RUN npm ci --legacy-peer-deps

# Copy source code
COPY . .

# Make the startup script executable
RUN chmod +x ./docker/start.sh

# Expose port 3000
EXPOSE 3000

# Start the application using the startup script
CMD ["./docker/start.sh"]