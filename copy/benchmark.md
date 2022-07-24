| Command | Mean [s] | Min [s] | Max [s] | Relative |
|:---|---:|---:|---:|---:|
| `cp sample.txt copy.txt` | 1.802 ± 0.714 | 0.451 | 3.304 | 1.47 ± 0.61 |
| `bun run bun.js sample.txt copy.txt` | 1.222 ± 0.158 | 1.027 | 1.556 | 1.00 |
| `node node.mjs sample.txt copy.txt` | 4.003 ± 0.145 | 3.860 | 4.590 | 3.27 ± 0.44 |
| `deno run --allow-read --allow-write deno.js sample.txt copy.txt` | 1.276 ± 0.132 | 1.102 | 1.614 | 1.04 ± 0.17 |
