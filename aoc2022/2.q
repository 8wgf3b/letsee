\l util.q

s1: 0 1 2 ! 1 0 2
s2: 0 1 2 ! 2 0 1
sum (I @\: 1), (3 * s1 mod[;3] (-/) ::) each I: (neg[64 87] + @[;0 2] ::) each  "i"$ra22[]
p2: {1 + mod[x[0] - 1 - s2 o; 3] + 3 * o: -1 + x 1}
sum p2 each I
\\