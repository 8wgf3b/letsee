\l util.q

pr: (52#.Q.an) ! 1 + til 52
sum pr raze {first (inter/) cut[count[x] div 2] x} each I: ra22[]
sum pr (first raze (inter/) ::) each 3 cut I
\\