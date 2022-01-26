FROM node:14
WORKDIR /app
RUN npm install express
RUN apt-get install docker
COPY * ./
EXPOSE 5000
CMD ["npm", "start"]