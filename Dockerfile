# ===== Stage 1: Build =====
FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --legacy-peer-deps

COPY . .

RUN npm run build

# ===== Stage 2: Run =====
EXPOSE 3000

CMD ["npm", "run", "start"]