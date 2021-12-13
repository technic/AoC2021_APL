⎕IO←0
lines ← ↑'-'(≠⊆⊢)¨ ⊃⎕NGET'day12/input.txt'1
v ← ∪,lines
e ← v ⍳ lines
g ← {⍵~⍨∪∊(∨/⍵=e)/↓e}¨ ⍳≢v
small ← ~{∧/⍵∊⎕a}¨ v
start ← v⍳⊂'start' ⋄ end ← v⍳⊂'end'

⍬ {n←(⍵⊃g)~(⍺∩⍸small) ⋄ ⍵=end : 1 ⋄ 0<≢n : +/ (⍺,⍵)∘∇¨n ⋄ 0} start

blocked ← {+/(small/⍵)>1 : (⍸small∧⍵>0) ⋄ ⊂start}
((≢g)⍴0) {c←(1+@⍵⊢⍺) ⋄ n←(⍵⊃g)~blocked c ⋄ ⍵=end : 1 ⋄ 0<≢n : +/ c∘∇¨n ⋄ 0} start
