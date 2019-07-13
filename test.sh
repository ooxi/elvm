#!/bin/bash


make -C8cc clean
rm -rf 'out'
make build-$1
make test-$1
make test-$1-full
./tools/check_selfhost.sh $1

