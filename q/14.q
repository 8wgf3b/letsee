\l utils.q

n: 1000000;

\d .ans

curr: cnt: 0;
collatz: {cnt +: 1; $[1 = x; 1; 0 = x mod 2; x div 2; 1 + 3 * x]}
colstep: {.ans.cnt: 0; .ans.curr: x; (collatz/) x; cnt}

\d .

0N! 1 + where a = max a: .ans.colstep each 1 + til n;
