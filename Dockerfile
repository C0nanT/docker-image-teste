ARG NODE_VERSION=20.18.3
FROM node:${NODE_VERSION}

ENV PORT=3001
ENV MESSAGE="Hello Docker!"

RUN useradd -m notroot
USER notroot

WORKDIR /app

COPY . .

CMD ["node", "index.js"]