# `pdksh-perf` - printf performance in `oksh`, `mksh`, `posh`

Some performance differences in `pdksh`-derived shells.

### Getting Started

To benchmark these, install [`hyperfine`], then run:

```sh
for i in mksh oksh
do
    hyperfine -w32 -r64 -S none --sort mean-time -L shell $i \
      '{shell} ./bg_for.ksh' '{shell} ./bg_printf.ksh' '{shell} ./bg_while.ksh'
done
```

#### Output

```log
Summary
  mksh ./bg_for.ksh ran
    1.04 ± 0.08 times faster than mksh ./bg_while.ksh
    4.04 ± 0.25 times faster than mksh ./bg_printf.ksh

  oksh ./bg_for.ksh ran
    1.01 ± 0.07 times faster than oksh ./bg_while.ksh
    2.20 ± 0.14 times faster than oksh ./bg_printf.ksh
```

These benchmarks can be reproduced in `oksh 7.3` and `mksh 59c`. The `posh 0.14.1` shell lacks a built-in `print`. All of them come originally from `pdksh`.

Without using the `print` built-in, execution slows down by a factor of 3X. With a more [detailed table], execution drops significantly to **[110X times slower]**. These disparities disappeared once the `print` function was introduced.

[`hyperfine`]: https://github.com/sharkdp/hyperfine/tree/master
[detailed table]: https://github.com/Neved4/color.sh/blob/main/src/color.sh
[110X times slower]: https://github.com/Neved4/color.sh/blob/main/src/bench.md
