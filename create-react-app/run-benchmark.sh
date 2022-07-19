#!/bin/bash


npx create-react-app myapp-npx
rm -rf myapp-npx

bun create react app myapp-bun
cd myapp-bun
bun a react-scripts -d
cd ..
rm -rf myapp-bun

# cached
nice -20 hyperfine \
    --export-markdown benchmark.md \
    --prepare "rm -rf myapp-npx; rm -rf myapp-bun" \
    --export-markdown benchmark-create-react-app.md \
    --runs 10 \
    "echo y | npx create-react-app myapp-npx" "bun create react myapp-bun; cd myapp-bun; bun a react-scripts -d"
