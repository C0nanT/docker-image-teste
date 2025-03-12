ARG NODE_VERSION=20.18.3
FROM node:${NODE_VERSION}

ENV PORT=3001
ENV MESSAGE="Hello Docker!"

RUN useradd -m notroot
USER notroot

WORKDIR /app

COPY . .

HEALTHCHECK --interval=10s --timeout=5s --start-period=5s --retries=3 \
    CMD [ "curl", "-f", "http://localhost:3001" ]

CMD ["node", "index.js"]