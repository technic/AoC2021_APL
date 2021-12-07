#!/bin/bash
set -e
for x in $(find . -name '*.dyalog' | sort -V)
do
    echo "=== Run $x ==="
    echo "⎕TRAP←0 'E' '⍪⎕DM ⋄ ⎕OFF 1'" > tmp.dyalog
    cat $x >> tmp.dyalog
    dyalog -script tmp.dyalog
    echo ""
done
