# Docker 

<a href="https://projects.100xdevs.com/tracks/docker-2/docker-2-1">Docker</a> 

### 1. Docker file (Add to Dockerfile)

  -  FROM node:20

  -  WORKDIR /usr/src/app
    
  -  COPY package* .
  -  COPY ./prisma .
        
  -  RUN npm install
  -  RUN npx prisma generate
    
  -  COPY . .
  -  RUN npm run build

  -  EXPOSE 3001
    
  -  CMD ["node", "dist/index.js", ]

### 2. In the terminal (To build an image)
   - docker build -t app-name .
   - dot (.) tells where to build the image from
   - (Now we created our own image)
   - docker run -p 3001:3001 image-name (To run that app)
   - docker run -p 3000:3000 -e DATABASE_URL="" image_name (env variable are injected at the run time in which we have DB_URL and much more..)

