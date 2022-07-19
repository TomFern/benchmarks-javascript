#!/bin/bash

rm -rf next-app
npx create-next-app@latest next-app --typescript

nice -20 hyperfine  \
    --export-markdown benchmark.md \
    --prepare "rm -rf next-app/build/" \
    --runs 50 \
    "cd next-app; npm run build" \
    "cd next-app; bun run build" 

rm -rf next-app


