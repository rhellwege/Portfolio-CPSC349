FROM node:18 AS build

WORKDIR /app

COPY package*.json ./

# Install dependencies with verbose output
RUN npm install

COPY . .

RUN npm run build

FROM node:18 AS production

WORKDIR /app

COPY --from=build /app/build ./build
COPY --from=build /app/package*.json ./

RUN npm install --production

EXPOSE 3000

CMD ["node", "./build/index.js"]
