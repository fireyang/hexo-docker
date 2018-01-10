# FROM node:9.3-alpine
FROM node:9.3

WORKDIR /blog

RUN npm install hexo-cli -g

EXPOSE 4000

CMD ["hexo", "server","-i","0.0.0.0"]
