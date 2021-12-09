\l util.q

nei: (0 0; -1 0; 1 0; 0 1; 0 -1)
n: count inputs -1 + m: count inputs: -48 + "j"$ra21[];
LP: {all a[0] < 1_ a: 0W^ inputs ./: nei +\: x}
0N! sum 1 + inputs ./: low: l where LP each l: til[m] cross til n;
vis: enlist[0N 0N] ! 1#1b;
getbas: {
    if[vis x; :()];
    vis[x] :: 1b;
    if[in[; 9 0N] c: inputs . x; :()];
    x, raze getbas @' l where c <  inputs ./: l: x +/: 1_ nei	 
    }
0N! prd div[;2] -3#asc (count getbas ::) each low;
\\
