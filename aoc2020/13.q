\l utils.q

inputs: 0W^ "J"$ "," vs last raw: .util.LEI2[.z.f]; earliest: "J"$ raw 0

part1: {ind: first iasc delay: neg[x] mod y; y[ind] * delay[ind]}[earliest]

gcd: {$[0 = y; x; .z.s . y, x mod y]}
lcm: {x * y div gcd . x, y}
bias: {{0 <> (z + x) mod y}[y 0; y 1] {y + x}[x 1]/ x 0} 
TSST: {bias[x; y], st: lcm . x[1], y[1]}
part2: {first (TSST/) i,' del: x i: where 0W <> x}

0N! (part1; part2) @\: inputs;
\\
