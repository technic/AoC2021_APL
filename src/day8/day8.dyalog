⎕IO←0
lines ← ⊃⎕NGET'day8/input.txt'1
a ← {(10↑⍵) (¯4↑⍵)}¨ ' ' (≠⊆⊢)¨ lines
c ← ⎕UCS 97+⍳7
s ← 'abcefg' 'cf' 'acdeg' 'acdfg' 'bcdf' 'abdfg' 'abdefg' 'acf' 'abcdefg' 'abcdfg'

mask ← ↑c∘∊¨
+/({(1=+/⍵∘.=⍵)/⍵} +/ mask s) ∊⍨ ≢¨ ⊃,/ 1⊃¨a

genid ← {m←⍵ ⋄ {⍵[⍋⍵]}¨{⍵/+⌿m}¨↓m}
solve ← {n v ← ⍵ ⋄ p ← ⍸¨↓(genid mask n)∘.≡(genid mask s) ⋄ (⍳10)[p][⊃,/⍸¨↓ (mask v)∧.= ⍉ mask n]}
+/{+/(solve ⍵)×⌽10*⍳4}¨a
