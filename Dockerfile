  FROM node:20

  WORKDIR /usr/src/app 

  COPY package* .
  COPY ./prisma .    

  RUN npm install

  RUN npx prisma generate 

  COPY . .

  RUN npm run build

  EXPOSE 3001 

  CMD ["node", "dist/index.js", ]