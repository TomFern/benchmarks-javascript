# JavaScript Runtime Benchmarks

Comparing:
- [Node.js](https://nodejs.org/en/) v16.16.0
- [npm](https://www.npmjs.com/) v8.11.0
- [Deno](https://deno.land/) v1.23.4
- [Bun](https://bun.sh/) v0.1.4

Tools used:
- [Loadtest](): v5.2.0
- [hyperfine](): v1.14.0

## Tests included

To run the test:

```bash
cd test-folder
./run-benchmark.sh
```

### create-react-app

Compare npm vs bun as a package manager. Create a basic React app with:
- `npx create-react-app`
- `bun create react && bun a react-scripts -d`

### build-next

Create an empty Next project and try building it with:
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

Load test Node, Deno, and Bun using Bun’s example scripts](https://github.com/oven-sh/bun/tree/e55d6eed2bf9a5db30250fdd8b9be063dc949054/bench/react-hello-world)

