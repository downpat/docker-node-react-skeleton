FROM node:6.10.0

WORKDIR /app

RUN npm install -g create-react-app

CMD ["create-react-app", "skeleton"]
