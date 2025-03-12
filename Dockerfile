ARG NODE_VERSION=20.18.3
FROM node:${NODE_VERSION}

WORKDIR /app

COPY . .

CMD ["node", "index.js"]