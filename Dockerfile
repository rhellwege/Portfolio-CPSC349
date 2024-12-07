FROM node:18 AS build

WORKDIR /app

COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

RUN npm run build

FROM node:18 AS production

WORKDIR /app

COPY --from=build /app/build ./build

# Install only production dependencies
COPY package*.json ./
RUN npm install --only=production

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["node", "build/index.js"]
