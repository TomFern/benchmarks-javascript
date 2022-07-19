#!/bin/bash

rm -rf demo-npm
rm -rf demo-bun

# npm
git clone https://github.com/semaphoreci-demos/semaphore-demo-javascript.git demo-npm
(cd demo-npm/src/client; npm install)

for i in {1..10}; do
    nice -20 hyperfine \
        --runs 1 \
        "cd demo-npm/src/client; npm remove webpack" \
        "cd demo-npm-src/client; npm add --save-dev webpack"
done

# bun
git clone https://github.com/semaphoreci-demos/semaphore-demo-javascript.git demo-bun
(cd demo-npm/src/client; bun install)

for i in {1..10}; do
    nice -20 hyperfine \
        --export-markdown benchmark-bun.md \
        --runs 1 \
        "cd demo-bun/src/client; bun remove webpack" \
        "cd demo-bun/src/client; bun add webpack -d"
done

rm -rf demo-npm
rm -rf demo-bun
