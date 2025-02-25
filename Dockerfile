FROM node:18

WORKDIR /usr/src/app

COPY . .

RUN npm install -g gatsby-cli
RUN yarn
RUN npm run build
CMD ["npm", "run", "serve"]