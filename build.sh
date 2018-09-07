#!/bin/bash

set -eu

source ~/.bash_profile

git config --global url."git@github.com:".insteadOf "https://github.com/"


pushd $GOPATH/src/github.com/aubreyL/imageserver
		go get github.com/pierrre/imageserver
		go get github.com/disintegration/gift
		go get github.com/pierrre/imageutil
		go get github.com/go-redis/redis
		go get github.com/bradfitz/gomemcache/memcache
		go get github.com/pierrre/lrucache
		go get github.com/golang/groupcache
		go get golang.org/x/image/tiff
		go get github.com/pierrre/githubhook
		make build
popd


#mkdir -p collection/config
