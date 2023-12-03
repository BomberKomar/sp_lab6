#!/bin/bash

perf script | ./FlameGraph/stackcollapse-perf.pl > out.perf-folded
./FlameGraph/flamegraph.pl out.perf-folded > perf.svg

rm out.perf-folded
