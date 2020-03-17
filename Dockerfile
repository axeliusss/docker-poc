# BUILDER
FROM node:12.2.0-alpine as builder
WORKDIR /app
ENV CI=true

# install and cache app dependencies
COPY package.json package-lock.json ./
RUN npm ci

COPY . ./
RUN npm run build

# SERVER
FROM builder as server
EXPOSE 3000
CMD ["npm", "start"]

# TEST
FROM builder as test
CMD ["npm", "test"]
