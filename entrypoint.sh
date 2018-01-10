#!/bin/sh
if [ "$1" = 'deploy' ]; then
    if [ -z "$GIT_EMAIL" ] || [ -z "$GIT_NAME" ]; then
        echo "GIT_EMAIL and GIT_NAME can't be empty, you shoulf set it when deploy!"
        exit 1
    fi
    set_email=`git config --global user.email $GIT_EMAIL`
    set_name=`git config --global user.name $GIT_NAME`
    exec hexo deploy -g
else
    exec "$@"
fi
