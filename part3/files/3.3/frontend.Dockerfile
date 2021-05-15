FROM node:latest
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .

RUN npm run build &&\
    npm install -g serve &&\
    useradd -m appuser

USER appuser

EXPOSE 5000
CMD ["serve", "-s", "-l", "5000", "build"]