#!/bin/bash
# script to build docker image

# 1. Download prerequisites

if [ ! -d cot-dsm ]; then
  git clone git@github.com:gorilych/cot-dsm.git
fi

pushd cot-dsm
git pull
popd

# 2. Build

sudo docker build -t gorilych/cot-dsm .
sudo docker push gorilych/cot-dsm
