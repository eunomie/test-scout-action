FROM golang:alpine3.17

RUN apk add --no-cache npm

WORKDIR /usr/app

RUN npm install left-pad

COPY <<EOF /usr/app/code.js
const leftPad = require('left-pad')

console.log(leftPad('hello hooks/hints', 5))
EOF

CMD ["node", "code.js"]
