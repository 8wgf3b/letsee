\l util.q

0N! div[;2] prd 0 -1 + ymx: abs min i: get {?[x in "-",.Q.n; x; " "]} first ra21[];
ranger: {x + til 1 + y - x}
XR: ranger . reverse max[f], "j"$ div[;2] -1 + sqrt 1 + 8 * min f: 2#i
SP: XR cross YR: ranger . -1 1 * ymx

/ optim part copied from adotsch (https://github.com/adotsch/aoc/blob/master/2021/day17.q)
0N! sum {any within[sums 0| x - l; 2#i] & within[; -2#i] sums y - l: til 1 + 2 * ymx} ./: SP;
\\
