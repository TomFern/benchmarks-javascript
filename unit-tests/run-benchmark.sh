#!/bin/bash

git clone https://github.com/semaphoreci-demos/semaphore-demo-javascript.git
cd semaphore-demo-javascript/src/server
npm install

nice -20 hyperfine \
    --export-markdown benchmark.md \
    --runs 50 \
    "npm run test" \
    "bun run test"

cd ../../../
rm -rf semaphore-demo-javascript

