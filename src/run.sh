#!/bin/bash
set -e
for x in $(find . -name '*.dyalog' | sort -V)
do
    echo "=== Run $x ==="
    dyalog -script "$x"
    echo ""
done
