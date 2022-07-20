#!/bin/bash

rm -rf react-npx
rm -rf react-bun
rm -rf react-deno

npx create-react-app react-npx --template typescript

bun create react react-bun
cd react-bun
bun a react-scripts -d
cd ..

deno-create-react-app init react-deno

nice -20 hyperfine \
    --export-markdown benchmark.md \
    --runs 50 \
    "cd react-npx; npm run build"\
    "cd react-bun; bun run react-scripts build" \
    "cd react-deno; deno-create-react-app build"

rm -rf react-npx
rm -rf react-bun
rm -rf react-deno
