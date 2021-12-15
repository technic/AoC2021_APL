⎕IO←0
a ← ⍎¨↑ ⊃⎕NGET'day15/input.txt'1
inf ← 10*9
shift ← {(¯1↓⍺⍪⍵)(1↓⍵⍪⍺)(¯1↓⍤1⊢⍺,⍵)(1↓⍤1⊢⍵,⍺)}
solve ← {a←⍵ ⋄ ¯1↑, {⊃⌊/ (⊂⍵),{a+⍵}¨ inf shift ⍵}⍣≡ ⊢ 0@(⊂0 0)⊢(⍴a)⍴inf}

solve a
solve {1+9|⍵-1} ⊃⍪/,/{a+⍵}¨ (+/)¨⍳5 5
