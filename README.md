# my Eva image

This image has the purpose of giving me a familiar platform to build upon

## build

docker build thovel/eva:$(echo "`git symbolic-ref HEAD 2> /dev/null | cut -b 12-`-`git log --pretty=format:\"%h\" -1`") .