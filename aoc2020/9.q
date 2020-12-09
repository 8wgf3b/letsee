\l utils.q

inputs: "J"$ .util.LEI2[.z.f]

xmchk: {any (x[z] - pr) in pr: x z - 1 + til y}
part1: {y x + first where not xmchk[y; x] each x + til count[y] - x}[25]

contsum: {
    x[0]: first where x[2] = x[1] msum x[3];
    x[1] +: 1;
    x
    }
part2: {
    l: x til first ind: where x = invld: part1 x;
    res: 2#{null x 0} contsum/ (0N; 2; invld; l);
    sum (max; min) @\: x res[0] - til res[1] - 1
    }

0N! (part1; part2) @\: inputs;
\\
