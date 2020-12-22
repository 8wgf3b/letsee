\l utils.q

inputs: {"J"$ 1_x} each  a: 1_/: cut[; raw] where ""~/: raw: enlist[""], .util.LEI2[.z.f]

game1: {rnd: x 0; p1: x 1; p2: x 2;
    $[
        p2[0] < p1 0; p1: p1, p1[0], p2[0];
        p2: p2, p2[0], p1[0]
    ];
    (1 + x 0; 1_p1; 1_p2)
    }
score: {sum x * reverse 1 + til count x}

0N!part1: score raze 1_{(&/) 0 <> count each 1_x} game1/ 0, inputs;

.g.dc: `u#()
game2: {o1: first p1: x 0; o2: first p2: x 1; hist: x 2;
    $[
        (|/) 0 = count each -1_x; :x;
        all (p: enlist (p1; p2)) in hist; :(p1; `long$(); hist);
        hist ,: p
    ];
    d1: 1_p1; d2: 1_p2;
    if[(|/) (o1, o2) >' count each (d1;d2);
        $[
            o1 > o2; :.z.s[(d1, o1, o2; d2; hist)];
            :.z.s[(d1; d2, o2, o1; hist)]
        ];
    ];
    nx: .z.s[(o1#d1; o2#d2; hist)];
    $[
        0 = count nx 1; :.z.s[(d1, o1, o2; d2; hist)];
        :.z.s[(d1; d2, o2, o1; hist)]
    ]    
    }

0N! part2: score raze -1_ game2 inputs, enlist `u#();
