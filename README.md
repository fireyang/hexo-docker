# init blog:

docker run --rm -v `pwd`/blog:/blog fireyang/hexo hexo init

# run blog server:

docker run --rm --name=hexo -p 4000:4000 -v `pwd`/blog:/blog fireyang/hexo hexo server
