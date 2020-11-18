FROM node:lts-alpine

WORKDIR /projects

COPY . /projects

RUN npm install -g drakov

ENV PORT=${PORT}

CMD ["drakov","-f", "input.apib", "--public", "-p", "$PORT"]