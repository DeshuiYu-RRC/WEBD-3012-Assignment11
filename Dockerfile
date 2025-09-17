FROM node:20-alpine

WORKDIR /deshui_yu_site

# Copy package files first for better caching
COPY package.json package-lock.json* ./

# Install dependencies
RUN npm install

# Copy all files
COPY . .

# Expose port
EXPOSE 7775

# Run in development mode
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "7775"]
