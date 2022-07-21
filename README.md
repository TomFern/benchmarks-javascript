# JavaScript Runtime Benchmarks

Software benchmarked:
- [Node.js](https://nodejs.org/en/) v16.16.0
- [npm](https://www.npmjs.com/) v8.11.0
- [Deno](https://deno.land/) v1.23.4
- [Bun](https://bun.sh/) v0.1.4

Tools used:
- [Loadtest](https://www.npmjs.com/package/loadtest): v5.2.0
- [hyperfine](https://github.com/sharkdp/hyperfine): v1.14.0
- [Semaphore CI/CD](https://semaphoreci.com/): running tests on [e1-standard-2](https://docs.semaphoreci.com/ci-cd-environment/machine-types/) and Ubuntu 20.04.
- MacBook Pro M1 2020, MacOS 12.4

This repository contains the scripts used to run most of the benchmarks.

## Benchmarks included

To run each benchmark:

```bash
cd <test-folder>
./run-benchmark.sh
```

### create-react-app

Compare npm vs bun as a package manager. Create a basic React app with:
- `npx create-react-app`
- `bun create react && bun a react-scripts -d`

### build-react

Run the `react-scripts build` on a empty React (TypeScript template) project. Compare Deno, Node and Bun:
- `npm run build`
- `bun run react-scripts build`
- `deno-create-react-app build`

### build-next

Build an empty Next.js project using Node and Bun:
- `npm run build`
- `bun run build`

### unit-tests

Run unit tests on server-side component of [semaphore-demo-javascript](https://github.com/semaphoreci-demos/semaphore-demo-javascript.git) demo.

- `npm run test`
- `bun run test`

### add-remove-modules

Remove and add the webpack module on the client-side component of [semaphore-demo-javascript](https://github.com/semaphoreci-demos/semaphore-demo-javascript.git) demo.

- `npm remove webpack; npm add --save-dev webpack`
- `bun remove webpack; bun add webpack -d`

### render-react

Load test Node, Deno, and Bun using [Bun’s example code](https://github.com/oven-sh/bun/tree/e55d6eed2bf9a5db30250fdd8b9be063dc949054/bench/react-hello-world)

- Number of requests: 1M
- Concurrency: 8
- Keep-alive: enabled
- Commands used to start each service:
    - `bun run react-hello-world.jsx`
    - `deno run --allow-net react-hello-world.deno.jsx`
    - ` node react-hello-world.node.js`

