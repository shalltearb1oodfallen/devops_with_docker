FROM ubuntu:latest

RUN apt update && \
    apt -y install curl && \
    curl -sL https://deb.nodesource.com/setup_16.x -o /tmp/nodesource_setup.sh && \
    bash /tmp/nodesource_setup.sh && \
    apt install nodejs -y

EXPOSE 5000

WORKDIR /usr/app

COPY ./example-frontend /usr/app

RUN npm install && \
    npm run build && \
    npm install -g serve

CMD ["serve", "-s", "-l", "5000", "build"]