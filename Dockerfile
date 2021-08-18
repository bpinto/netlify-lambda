FROM node:14.17.5

RUN npm install --global npm@latest

# set application home
WORKDIR /src/app

COPY package.json package-lock.json /src/app/
RUN npm install --no-save

COPY . /src/app

# run server by default
CMD npm run start

# expose running servers
EXPOSE 9000
