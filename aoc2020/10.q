\l utils.q

inputs: asc inputs, 3 + max inputs: 0, "J"$ .util.LEI2[.z.f]

part1: {prd count each group deltas x}

addpath: {
    nex3: nex3 where count[x 1] > nex3: x[0] + 1 + til 3;
    (1 + x 0; @[x 1; nex3; {y[0], y[1] + x[1] * 3 >= y[0] - x 0} x[1] x 0])
    }
part2: {3 last/ {x[0] < count x 1} addpath/ (0; x,' 1, (-1 + count x)#0)}

0N! (part1; part2) @\: inputs;
\\
