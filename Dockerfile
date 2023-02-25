FROM node:18-alpine as build

WORKDIR /app

COPY package.json .
COPY yarn.lock .
COPY . .
RUN yarn --version && yarn && yarn install && yarn run build

FROM nginx:1.23-alpine
COPY --from=build /app/build /usr/share/nginx/html/
EXPOSE 80
