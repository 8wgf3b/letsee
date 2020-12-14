\l utils.q

inputs: .util.LEI2[.z.f]; init: {`mask`mem set' (x; y)}

parser: { 
    $[
        "mask" ~ first d: " " vs y; mask:: last d;
        x . "J"$(-1_4_d 0; d 2)
        ];
    }
compute1: {
    `mem upsert (1#x) ! 1# 2 sv "B"$/: ?["X" = mask; ((36 - count b)#"0"), b: "" sv string 2 vs y; mask];
    }
genaddr: {
    $[
        0 = count ind: where "X" = x; :enlist x;
        :raze .z.s each {@[x; y;:;] @/: "01"}[x; ind 0]
        ]
    }
compute2: {
    maddrb: ?["0" = mask; ((36 - count b)#"0"), b: "" sv string 2 vs x; mask];
    n: count maddr: {2 sv "B"$/: x} each genaddr maddrb;
    `mem upsert maddr ! n#y;    
    }

part1: {init[::; ()!()]; parser[x] each y; sum mem}[compute1]
part2: {init[::; ()!()]; parser[x] each y; sum mem}[compute2]

0N! (part1; part2) @\: inputs;
\\
