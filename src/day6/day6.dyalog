lines ← ⊃⎕NGET'day6/input.txt'1
a ← {1(+@⍺)⍵}/ (1+⍎⊃lines),⊂9⍴0
+/ ⊃{(⊃⍵)(+@7) 1⌽⍵}/ (⍳80),a

⎕PP←15
+/ ⊃{(⊃⍵)(+@7) 1⌽⍵}/ (⍳256),a
