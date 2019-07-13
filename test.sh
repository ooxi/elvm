#!/bin/bash

set -e

mc $1 make -C8cc clean
mc $1 rm -rf 'out'
mc $1 make build-$1
mc $1 make test-$1
mc $1 make test-$1-full
mc $1 ./tools/check_selfhost.sh $1

