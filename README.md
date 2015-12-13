# my Eva image

This image has the purpose of giving me a familiar platform to build upon

## build

    sudo docker build -t \
    thovel/eva:$(echo "`git symbolic-ref HEAD 2> /dev/null | cut -b 12-`-`git log --pretty=format:\"%h\" -1`") . \

## run

    sudo docker run -v /dev/urandom:/dev/random -t -i 79aed4c6d1cd /bin/bash

