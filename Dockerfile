FROM node:20-alpine

# Install nmap for network scanning
RUN apk add --no-cache nmap

WORKDIR /app

# Copy strix files
COPY strix/ ./strix/
COPY strix/package*.json ./strix/
COPY strix-web/ ./strix-web/
COPY strix-api/ ./strix-api/

# Install dependencies
WORKDIR /app/strix
RUN npm install --production

WORKDIR /app/strix-web
RUN npm install --production

WORKDIR /app/strix-api
RUN npm install --production

# Expose ports
EXPOSE 3000 8080

# Default command runs both services
CMD echo "Starting Strix Cloud Services..." && \
    (cd /app/strix-web && node server.js &) && \
    (cd /app/strix-api && node server.js &) && \
    wait
