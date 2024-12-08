FROM node:22-alpine AS builder

WORKDIR /app

COPY package*.json .
COPY pnpm-lock.yaml .

RUN npm i -g pnpm
RUN pnpm install

COPY . .

RUN pnpm run build

EXPOSE 4173

ENV NODE_ENV=production

CMD [ "pnpm", "run", "preview" ]
