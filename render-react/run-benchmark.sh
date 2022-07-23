#!/bin/bash

concurrency=50
requests=2000000

git clone https://github.com/oven-sh/bun.git
cd bun/bench/react-hello-world

# bun: port 3000
echo -n bun:
bun -v
bun run react-hello-world.jsx &
pid=$!
sleep 1
oha -c $concurrency -n $requests http://localhost:3000
kill $pid

# deno port 8080
echo -n deno:
deno --version
deno run --allow-net react-hello-world.deno.jsx &
pid=$!
sleep 1
oha -c $concurrency -n $requests http://localhost:8080
kill $pid

# node port 9080
echo -n node:
node -v
node react-hello-world.node.js &
pid=$!
sleep 1
oha -c $concurrency -n $requests http://localhost:9080
kill $pid

rm -rf bun
