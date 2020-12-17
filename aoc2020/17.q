\l utils.q

inputs: .util.LEI2[.z.f]

getngbrs: {x +/: (`u#(n - 1) cross[l]/ l: -1 0 1) except enlist (n: count x)#0}

nxtst: {$[
        (not in[;2 3] sum x @/: getngbrs y) and x y; 0b;
        (3 = sum x @/: getngbrs y) and not x y; 1b; 
        x y]
        }

cycle: {(!) . (nxtk; nxtst[x] @/: nxtk: `u#distinct raze getngbrs @/: key x)}

cycler:{
    cyc0: (!) . (`u#icord,\: (x - 2)#0; {"#" = x . y}[z] @/: icord: n cross n: til count z);c: y + 1;
    y cycle/ cyc0
    }

`part1`part2 set' (sum  cycler[3;6]@; sum cycler[4; 6]@);

0N! (part1; part2)@\: inputs; 
\\
