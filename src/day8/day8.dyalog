⎕IO←0
lines ← ⊃⎕NGET'day8/input.txt'1
a ← {(10↑⍵) (¯4↑⍵)}¨ ' ' (≠⊆⊢)¨ lines
c ← ⎕UCS 97+⍳7
s ← 'abcefg' 'cf' 'acdeg' 'acdfg' 'bcdf' 'abdfg' 'abdefg' 'acf' 'abcdefg' 'abcdfg'

mask ← ↑c∘∊¨
+/({(1=+/⍵∘.=⍵)/⍵} +/ mask s) ∊⍨ ≢¨ ⊃,/ 1⊃¨a

genid ← {⍵[⍋⍵]}¨ {(/∘(+⌿⍵)¨↓⍵)}
solve ← {n v←⍵ ⋄ (⍳10)[⊃⍳/(genid mask)¨ s n][⊃⍳/mask¨ n v]}
+/{+/(solve ⍵)×⌽10*⍳4}¨a
