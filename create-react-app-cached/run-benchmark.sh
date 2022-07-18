#!/bin/bash


npx create-react-app myapp-npx
rm -rf myapp-npx

bun create react app myapp-bun
rm -rf myapp-bun

# cached
hyperfine \
    --prepare "rm -rf myapp-npx; rm -rf myapp-bun" \
    --export-markdown benchmark-create-react-app.md \
    --runs 50 \
    "echo y | npx create-react-app myapp-npx" "bun create react myapp-bun"
