\l util.q

bg: {$[(=/) x; x 0; min[x] + til 1 + abs (-/) x]}
rl: {.[,';] bg each flip (x; y)}
rl2: {2_ raze x[0] rl ': x}
R: distinct raze rl2 each I: (get each " -> " vs) each ra22[]