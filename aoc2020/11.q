\l utils.q

inputs: signum -46 + "j"$ .util.LEI2[.z.f]

getadj: {y ./: x +\: z}[(l cross l:-1 + til 3) _ 4]
chngbool: {
    adj: getadj[x; y];
    $[
        (0 = count where -1 = adj) and 1 = num: x . y; 1b;
        (4 <= count where -1 = adj) and -1 = num; 1b;
        0b
        ]
    }
round: {
    cn: count y -1 + rn: count y;
    chng: (rn, cn)# x[y] each (til rn) cross til cn;
    (y * not chng) - y * chng
    }
part1: {count where -1 = raze (round[chngbool]/) x}

getfirst: {
    first {0 = x 0} {(x[3] . x[4] + x[2] * x[1]; x[1] + 1; x[2]; x[3]; x[4])}/ (0; 1; z; x; y)
    }
getadj2: {
    getfirst[x;y] each (l cross l:-1 + til 3) _ 4
    }
chngbool2: {
    adj: getadj2[x; y];
    $[
        (0 = count where -1 = adj) and 1 = num: x . y; 1b;
        (5 <= count where -1 = adj) and -1 = num; 1b;
        0b
        ]
    }
part2: {count where -1 = raze (round[chngbool2]/) x}

0N! (part1; part2) @\: inputs;
\\
