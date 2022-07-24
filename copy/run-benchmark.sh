#!/bin/bash

openssl rand -out sample.txt -base64 $(( 2**30 * 3/4 ))

hyperfine \
    --export-markdown benchmark.md \
    --runs 20 \
    "cp sample.txt copy.txt" \
    "bun run bun.js sample.txt copy.txt" \
    "node node.mjs sample.txt copy.txt" \
    "deno run --allow-read --allow-write deno.js sample.txt copy.txt" 

rm sample.txt
