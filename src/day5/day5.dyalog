lines ← ⊃⎕NGET'/app/day5/input.txt'1
aa ← ↑¨ 1 + ⍎¨¨ {(' ' (≠⊆⊢) ⍵) [1 3]}¨ lines
to ← {a←(¯1+⍵⌊⍺)+⍳1+|⍵-⍺⋄⍵>⍺:a⋄⌽a}
draw ← {,¨/to⌿⍵}

a ← ((∨/=⌿)¨ aa)/aa  ⍝ filter for part 1
+/+/ 1 < ⊃{1(+@(⊃draw ⍺)) ⍵}/ a,⊂(⌈⌿⊃⌈/a)⍴0

a ← aa
+/+/ 1 < ⊃{1(+@(⊃draw ⍺)) ⍵}/ a,⊂(⌈⌿⊃⌈/a)⍴0
