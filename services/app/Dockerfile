FROM node:17.6.0-alpine3.15 AS build-env
WORKDIR /opt/app
ENV NODE_ENV production
COPY ./create-react-app/package*.json ./
RUN npm ci
COPY ./create-react-app /opt/app
RUN npm install && npm run build

FROM nginx:1.21.6-alpine
COPY ./nginx/conf.d /etc/nginx/conf.d
COPY --from=build-env /opt/app/build /usr/share/page/html/
