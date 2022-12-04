\l util.q

p1: {$[(x[1] >= y[1]) and x[0] <= y[0]; 1b; (x[1] <= y[1]) and x[0] >= y[0]; 1b; 0b]} .
p2: {$[not (x[0] > y[1]) or y[0] > x[1]; 1b; 0b]} .
sum each (p1; p2) @/:\: I: (2 0N# get ssr[;"-";" "] ::) each ra22[]
\\