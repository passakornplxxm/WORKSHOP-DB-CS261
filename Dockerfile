FROM node:18

WORKDIR /usr/src/app

COPY Master-FrontEnd/package*.json ./

RUN npm install --production

COPY Master-FrontEnd/public ./public

COPY Master-FrontEnd/server.js .

EXPOSE 3000

CMD ["node", "server.js"]
