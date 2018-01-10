FROM node:9.3
# FROM node:9.3

RUN apt-get update && apt-get install -y git && rm -r /var/lib/apt/lists/*

# Change timezone to China Standard Time
# RUN echo "Asia/Shanghai" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata

WORKDIR /blog

RUN npm install hexo-cli -g

EXPOSE 4000

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
RUN ["chmod", "+x", "/entrypoint.sh"]

CMD ["hexo", "server","-i","0.0.0.0"]
