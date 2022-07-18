# JavaScript Runtime Benchmarks

Comparing:
- [Node.js](https://nodejs.org/en/) v16.16.0
- [npm](https://www.npmjs.com/) v8.11.0
- [Deno](https://deno.land/) v1.23.4
- [Bun](https://bun.sh/) v0.1.4

## Tests included

### create-react-app-cached

Compare npm vs bun as a package manager. Create a basic React app with:
- `npx create-react-app`
- `bun create react`

### create-react-app-uncached

Same as the previous test, but cache is cleared before each command.

### WIP
