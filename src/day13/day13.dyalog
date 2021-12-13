⎕IO←0
lines ← ((0≠≢¨)⊆⊢) ⊃⎕NGET'day13/input.txt'1
p ← ⍎¨0⊃lines
f ← ⊂¨({'x'=¯1↑0⊃⍵} ⌽ {0,⍎1⊃⍵})¨ '='(≠⊆⊢)¨ 1⊃lines

show ← {⍉('#'@⍵) (⊃1+⌈/⍵)⍴'.'}
fold ← {⍵-2×(⍺>0)×0⌈(⍵-⍺)}

≢∪ ⊃fold/ (1↑f),⊂p
show ⊃fold/ (⌽f),⊂p
