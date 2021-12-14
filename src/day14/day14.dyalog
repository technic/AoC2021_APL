⎕PP←15
a rules ← ((0≠≢¨)⊆⊢)⊃⎕NGET'day14/input.txt'1
p r ← ↓⍉↑ ({⍵∊⎕a}⊆⊢)¨ rules

(⌈/-⌊/) (≢⊢)⌸ {¯1↓ ,⍉↑ ⍵ (⊃,/r[p⍳(⊂⊢)⌺2⊢⍵]) }⍣10 ⊢ ⊃a

i ← ⊃,/{ (p⍳1↑⍵),¨ p ⍳ (⊂⊢)⌺2 ⊢ 3↑ ,⍉↑⍵}¨ ↓⍉↑ p r
m ← ⍉ 1@i ⊢ (2⍴≢r)⍴0

npat ← +⌿{(≢⍵)@⍺ ⊢ (≢p)⍴0}⌸ p⍳(⊂⊢)⌺2⊢⊃a
chars ← ∪∊r,a
nchr ← +⌿{(≢⍵)@⍺ ⊢ (≢chars)⍴0}⌸ chars⍳⊃a
addchars ← { ⊃{i v ← ⍺ ⋄ {v+⍵}@i⊢⍵ }/ (↓⍉↑(chars⍳⊃¨r),⍥⊂⍺),⊂⍵}

(⌈/-⌊/) ⊃{nchr npat ← ⍵ ⋄ (npat addchars nchr) (m (+.×) npat) }⍣40⊢ nchr,⍥⊂npat
