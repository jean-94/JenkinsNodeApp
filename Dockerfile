FROM node:14
WORKDIR /app
RUN npm install express
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
RUN ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose 
RUN apt-get install docker
COPY * ./
EXPOSE 5000
CMD ["npm", "start"]