\l utils.q

inputs: .util.LEI2[.z.f]

/ cube coord from https://www.redblobgames.com/grids/hexagons/
.t.dir: `e`ne`se`w`sw`nw ! neg[t], t: (-1 1 0; -1 0 1; 0 1 -1) 
.t.black: (`u# enlist 0 0 0)! 1#0b
gettile: {
    if [0 = count y; :(x; y)];
    c: $[y[0] in "sn"; 2; 1];
    (x + .t.dir `$ c#y; c _ y)
    }
{@[`.t.black; first ((gettile .)/) (0 0 0; x); not];} each inputs;
0N! part1: sum .t.black;

flipbool: {
    blks: sum .t.black .t.dir +\: x;
    $[
        (not blks in 1 2) and .t.black x; 1b;
        (2 = blks) and not .t.black x; 1b;
        0b
    ]
    }
dayflip: {
    @[`.t.black; ;not] alltiles where flipbool each alltiles: distinct key[.t.black], raze key[.t.black] +/:\: value .t.dir;
    1 + x
    }

100 dayflip/ 0; 0N! part2: sum .t.black;
\\
