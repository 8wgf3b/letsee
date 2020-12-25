\l utils.q

inputs: {"J"$ 1_x} each  a: 1_/: cut[; raw] where ""~/: raw: enlist[""], .util.LEI2[.z.f]

game1: {p1: x 0; p2: x 1;
    $[
        (|/) 0 = count each x; :x;
        p2[0] < p1 0; p1: p1, p1[0], p2[0];
        p2: p2, p2[0], p1[0]
    ];
    (1_p1; 1_p2)
    }
score: {sum x * reverse 1 + til count x}

0N!part1: score raze (game1/) inputs;
g.dc: `u#()
game2: {
    o1: first p1: x 0; o2: first p2: x 1; 
    $[
        (|/) 0 = count each x; :x;
        all (p: enlist (p1; p2)) in g.dc; :(p1; `long$());
        g.dc ,: p
    ];
    d1: 1_p1; d2: 1_p2;
    if[(|/) (o1, o2) >' count'[(d1; d2)];
        $[
            o1 > o2; :(d1, o1, o2; d2);
            :(d1; d2, o2, o1)
        ]        
    ];
    temp: g.dc; g.dc: `u#();
    nx: (.z.s/) (o1#d1; o2#d2);
    g.dc: temp;
    $[
        0 = count nx 1; :(d1, o1, o2; d2);
        :(d1; d2, o2, o1)
    ]    
    }

0N! part2: score raze g: (game2/) inputs;
\\
