#Development environment
FROM node:13.12.0-alpine

WORKDIR /app

COPY . .

RUN npm install --silent && npm run build

EXPOSE 3000

CMD ["npm", "start"]
