⎕IO←0
a ← ↑⍎¨¨ ⊃⎕NGET'day9/input.txt'1
d ← {(2>/10,⍵)∧(2</⍵,10)}
p ← ⍸ (d a) ∧ ⍉d ⍉a
+/1+a[p]

w ← (1 0) (¯1 0) (0 1) (0 ¯1)
adj ← {p ← ↓(↑w) +⍤1⊢ ⍵ ⋄ p1 ← p /⍨ ∧/¨ {(0 0 ≤ ⍵) ∧ (⍴a)>⍵}¨ p ⋄ p1 /⍨ (a[p1]<9) ∧ (a[p1]>⍵⌷a)}
×/{⍵⌷⍨⊂3↑⍒⍵} {≢{acc x ← ⍵ ⋄ y ← ∪⊃,/adj¨ x ⋄ 0<≢y : ∇ (acc∪y) y ⋄ acc} {⍵ ⍵}⊂⍵}¨ p
