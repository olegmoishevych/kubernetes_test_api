FROM node:22

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install --production

RUN npm install -g @nestjs/cli

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["node", "dist/main.js"]
