FROM node:14-alpine3.11

WORKDIR /projects

COPY . /projects

RUN npm install -g drakov@1.0.4

ENV PORT=${PORT}

CMD ["drakov","-f", "input.apib", "--public", "-p", "$PORT"]