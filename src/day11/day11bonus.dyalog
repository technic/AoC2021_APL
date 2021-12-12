⎕IO←0
⎕PW←200
a ← ↑⍎¨¨⊃⎕NGET'day11/input.txt'1
cnt ← {{+/,⍵}⌺3 3⊢⍵}
step ← {m v ← ⍵ ⋄ _ ← draw m×v ⋄ (m∧10>v) (v + cnt m∧10≤v)}

⎕ ← (⎕UCS 27),'[?25l',(⎕UCS 27),'[48;5;16m'

clr ← { ⎕ ← (⎕UCS 27),'[2J',(⎕UCS 27),'[H' }
colorize ← { (⎕UCS 27),'[38;5;',(⍕⍺),'m',(⍕⍵) }
format ← { on ← ⍸⍵>9 ⋄ (130@(⍸⍵=0) (220@on) 237 + ⍵) colorize¨ ('▇'@on) ⍵ }
draw ← { _ ← clr ⍬  ⋄  ⎕ ←  ⊂ ↑,/ ' ',⍨¨ format ⍵ ⋄ ⎕DL 0.05 }

_ ← { _ ← ⎕DL 0.1 ⋄ k a ← ⍵ ⋄ {(k++/,~⊃⍵) (⊃×/⍵)} step⍣≡ ⊢ ((⍴a)⍴1) (1+a)}⍣600 ⊢ 0 a
⎕ ← (⎕UCS 27),'[?25h'
