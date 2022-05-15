FROM node:10

# Create app directory
WORKDIR /usr/src/lafs

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)


RUN npm install
RUN	npm install -g @angular/cli@v6-lts
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY package*.json ./

EXPOSE 3000
CMD ng serve --host 0.0.0.0