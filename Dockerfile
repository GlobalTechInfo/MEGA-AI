# Use Node.js 18 base image (works on amd64 + arm64)
FROM node:18-bullseye

WORKDIR /app

COPY . .

RUN npm install || yarn install

EXPOSE 5000
CMD ["npm", "start"]
