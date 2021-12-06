#!/bin/bash
set -e
for x in $(find . -name '*.dyalog')
do
    echo "=== Run $x ==="
    dyalog -script "$x"
    echo ""
done
