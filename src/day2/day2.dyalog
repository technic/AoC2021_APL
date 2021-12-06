a ← ⊃⎕NGET'day2/input.txt'1

cmd ← {⊃(1 0) (0 ¯1) (0 1)['fud'⍳⊃1⊃⍵] × (⍎2⊃⍵)} ¨ ' ' (≠⊆⊢) ¨ a
×/ ⊃ +/ cmd

fwd ← {1⊃⍵}¨ cmd
aim ← +\ {2⊃⍵}¨ cmd
+/ fwd × +/ fwd × aim
