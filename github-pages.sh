#!/bin/sh
docker run --rm -it -v ${PWD}:/site -p 4000:4000 cwbaker/github-pages
