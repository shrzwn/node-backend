FROM node:latest
WORKDIR /app
COPY package*.json ./
RUN npm ci --only-production # npm install or npm install
COPY . .
ENV NODE_ENV=production PORT=3000
EXPOSE 3000
USER node
CMD ["node","app.js"]

