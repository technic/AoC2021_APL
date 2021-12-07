a ← ⍎⊃ ⊃⎕NGET'day7/input.txt'1

⌊/+/| a∘.-a
2÷⍨⌊/+⌿{⍵×1+⍵}|a∘.-⍳⌈/a
