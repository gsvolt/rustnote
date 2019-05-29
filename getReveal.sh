#!/bin/bash
source $HOME/.cargo/env
if [ ! -d "out/reveal.js" ]; then
    mkdir -p out/
    cd out/
    wget https://github.com/hakimel/reveal.js/archive/master.tar.gz
    tar -zxvf master.tar.gz
    mv reveal.js-master reveal.js
    rm master.tar.gz
    cd -
fi
