FROM node:16

WORKDIR '/app'

COPY package.json .
RUN npm install
COPY . .

CMD ["npm","start"]

FROM nginx
COPY static-html-directory /usr/share/nginx/html
