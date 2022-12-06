\l util.q

subl: {y z - til x}
mark: {1 + ind first where {s ~ distinct s: subl[x; I] y}[x] each ind: d + til neg[d: x - 1] + count y}
4 14 mark\: I: first ra22[]
\\