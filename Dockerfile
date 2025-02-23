FROM node:16
WORKDIR /app

# Bağımlılıkları kopyala ve yükle
COPY package.json package-lock.json ./  
RUN npm install  

# Tüm dosyaları kopyala
COPY . .  

CMD ["node", "src/server.js"]
EXPOSE 3000
