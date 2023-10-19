# `pdksh-perf` - printf performance in `oksh`, `mksh`, `posh`

Some performance differences in `pdksh`-derived shells.

### Getting Started

To benchmark these, install [`hyperfine`], then run:
```console
$ hyperfine -w32 -r64 -N --sort mean-time --export-markdown - \
    ./bg_for.sh ./bg_printf.sh ./bg_while.sh
```

#### Output

```log
Summary
  ./bg_printf.sh ran
    3.48 ± 0.16 times faster than ./bg_for.sh
    3.52 ± 0.16 times faster than ./bg_while.sh
```

Things slow down by a factor of 3X, but with a more [detailed table], execution gets down to **[110X times slower]**.

These benchmarks can be reproduced in `oksh 7.3`, `mksh 59c` and `posh 0.14.1`. First two come originally from `pdksh`.

[`hyperfine`]: https://github.com/sharkdp/hyperfine/tree/master
[detailed table]: https://github.com/Neved4/color.sh/blob/main/src/color.sh
[110X times slower]: https://github.com/Neved4/color.sh/blob/main/src/bench.md
