a ← ⊃⎕NGET'day10/input.txt'1
inv ← {')]}>' ⌷⍨ '([{<' ⍳ ⍵}
b←{⊃{'x'=⊃⍵ : ⍵ ⋄ ⍺∊'([{<' : (inv ⍺),⍵ ⋄ ⍺=⊃⍵ : 1↓⍵ ⋄ 'x',⍺ }/ ⌽(⊂⍬),⍵}¨a

⊃+/{'x'=⊃⍵: 3 57 1197 25137[')]}>'⍳1↓⍵] ⋄ 0}¨b

{⍵[(⌈(≢⍵)÷2)⌷(⍋⍵)]} {{⍺+(5×⍵)}/ ⌽0,')]}>'⍳⍵}¨ ('x'≠⊃¨b)/b
