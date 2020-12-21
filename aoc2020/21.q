\l utils.q

inputs: .util.LEI2[.z.f]; .f.ad: (`u#enlist `ini) ! (); .f.a: `u#(); .f.i: `u#()
parseline: {
    .f.a: .f.a union a: `$ ", " vs -1_last t: " (contains " vs x;
    .f.i: .f.i, b: `$ " " vs first t;
    {$[y in key .f.ad; .f.ad[y]: x inter .f.ad[y]; .f.ad[y]: x]}[b] each a;
    }
parseline each inputs; .f.ad: 1_.f.ad; .f.roll: ()

reducer: {
    ones: raze x where s: 1 = count each x;
    x[where not s]: x[where not s] except\: ones;
    x
    }

reduced: {any 1 < count each x} reducer/ .f.ad
0N!part1: count .f.i except raze reduced;
0N!part2: "," sv string raze reduced k iasc k: key reduced;
\\
