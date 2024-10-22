# Docker 


### 1. Docker file 
   (Add to Dockerfile)
  -  FROM node:20

  -  WORKDIR /app
  
  -  COPY . .
  
  -  RUN npm install
  -  RUN npx prisma generate
  -  RUN npm run build
   
  -  EXPOSE 3000
  
  -  CMD ["node", "dist/index.js"]

### 2. In the terminal (To build an image)
   - docker build -t app-name .
   - dot (.) tells where to build the image from
   - (Now we created our own image)
   - docker run -p 3001:3001 image-name (To run that app)
   - docker run -p 3000:3000 -e DATABASE_URL="" image_name (env variable are injected at the run time in which we have DB_URL and much more..)

