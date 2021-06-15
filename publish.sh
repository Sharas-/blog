#! /bin/bash

rm _site -rf
sudo docker run --rm --volume="$PWD:/srv/jekyll" -it jekyll/jekyll:3.8 jekyll build && \
cd _site && \
git init && \
git add . && \
git commit -m 'release' && \
git push  https://sidesteps:Fricco1981@github.com/sidesteps/sidesteps.github.io master -f
