FROM oven/bun:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json bun.lockb  /usr/src/app
RUN  bun install 

# Bundle app source
COPY . /usr/src/app

ENV NODE_ENV=development

EXPOSE 3000
CMD [ "bun", "run", "index.ts" ]
