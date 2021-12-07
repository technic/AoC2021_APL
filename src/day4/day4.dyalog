lines ← ⊃⎕NGET'day4/input.txt'1

ns ← ⍎⊃lines
boards ← ⍎¨¨ 1↓ ({0≠≢⍵}¨ lines) ⊆ lines
match ← {qs←⍺ ⋄ +/{(≢⍵)=≢qs∩⍵}¨⍵}
bingo ← {((⍺ match ⍵) + (⍺ match ↓⍉↑⍵)) > 0}

i xs ← ⊃ {ms ← ⍺ ⋄ (⊃⍵)≠0 : ⍵ ⋄ (⊃⍸{ms bingo ⍵}¨boards) ms}/ ⌽ ((0, ⍬),(,\ ns))
b ← 25⍴ ↑(i⊃boards)
(¯1↑ xs) × +/ ((b ∊ xs) = 0) / b

wins ← {ms ← ⍵ ⋄ {ms bingo ⍵}¨ boards}¨ (,\ ns)
k ← (+/¨ wins) ⍳ ⍴boards
xs ← k↑ns
b ← 25⍴ ↑ (((k⊃wins)-(k-1)⊃wins) ⍳ 1) ⊃ boards
(¯1↑ xs) × +/ ((b ∊ xs) = 0) / b
