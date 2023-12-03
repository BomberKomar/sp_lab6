#!/bin/bash

perf record -F 50 --call-graph dwarf ./diff
