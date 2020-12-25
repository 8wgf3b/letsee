\l utils.q

ruler: {
    $[
        "a" in rest: last ro: ": " vs x; ("J"$ first ro), enlist 1#"a";
        "b" in rest; ("J"$ first ro), enlist 1#"b";
        ("J"$ first ro), enlist "J"$/: " " vs/: " | " vs rest
    ]
    }
slice: {sublist[x[0], x[1] - x[0]] y}

spl: (0, where ""~/: inputs) _ inputs: .util.LEI2[.z.f]; 
inputs: 1 _ spl 1 
rules: r[1] iasc first r: flip ruler each spl 0

parser: {
    $[
        0 = count x; 0 = count y;
        0 = count y; 0b;
        -10 = type fst: x 0; $[fst = y 0; .z.s[1_x; 1_y]; 0b];
        any .z.s[; y] each rules[fst],\: 1_ x 
    ]
    }

0N! part1: sum parser[raze rules 0] each inputs;

rules[8]: (1#42; 42 8); rules[11]: (42 31; 42 11 31)
0N! sum parser[raze rules 0] each inputs;
\\
