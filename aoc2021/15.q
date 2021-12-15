\l util.q

n: count inputs: -48 + "j"$ ra21[]

PQ: {
    if[() ~ x; :()];
    if[not all within[; 0, N - 1] c: -2#f: first x; :1_x];
    cost: first[f] + {$[x = 0; 9; x]} mod[;9] sum (c div n), inputs . mod[; n] c;
    $[cost < DP . c; DP :: .[DP; c; :; cost]; :1_x];
    r iasc first @' r: 1_x, $[#[2; N - 1] ~ c; :(); cost,' c +/: (1 0; -1 0; 0 1; 0 -1)]
    }

djkstr: {
    N :: x * n;
    DP :: #[N, N] 0W;
    (PQ/) enlist 0 0 0;
    DP[N - 1; N - 1] - inputs . 0 0
    }

0N! djkstr each 1 5;
/ TODO https://code.kx.com/q/kb/lp/
\\

