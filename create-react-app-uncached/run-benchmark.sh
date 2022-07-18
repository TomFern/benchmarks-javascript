#!/bin/bash

rm -rf myapp-npx
rm -rf myapp-bun

# cached
hyperfine \
    -i \
    --prepare "rm -rf myapp-npx; rm -rf myapp-bun; npm cache clear --force; rm -rf ~/.bun/install/cache" \
    --export-markdown benchmark-create-react-app.md \
    --runs 15 \
    "echo y | npx create-react-app myapp-npx" "bun create react myapp-bun"
