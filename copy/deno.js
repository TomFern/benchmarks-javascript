import * as path from "https://deno.land/std/path/mod.ts";

const input = path.resolve(Deno.args[0]);
const output = path.resolve(Deno.args[1]);
Deno.copyFileSync(input, output);
