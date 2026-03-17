# Build stage
FROM node:20-slim AS build-stage
WORKDIR /app

# Install dependencies separately to leverage Docker cache
COPY package*.json ./
RUN npm install

# Copy source and build
COPY . .
RUN npm run build

# Production stage
FROM nginx:stable-alpine AS production-stage

# Copy the build output from build-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Copy our custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Give nginx permissions to the files
RUN chmod -R 755 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
