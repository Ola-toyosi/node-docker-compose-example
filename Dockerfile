FROM node:18


# define working directory of a docker container at any given time
# all commands are executed in this working directory
WORKDIR /usr/src/app


# copy package from source directory to working directory
COPY package*.json ./


# install packages 
RUN npm install


# copy everything from source directory to working directory
COPY . .


# expose internal port to rest of local machine
EXPOSE 3000


# start up server inside docker container
CMD ["npm", "run", "dev"]