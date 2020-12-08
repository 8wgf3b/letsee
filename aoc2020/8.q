\l utils.q

clean: (`; "I") $' " " vs ssr[; "+";""] @
inputs: clean each .util.LEI2[.z.f]

runinst: {
    x[1] ,: x[2];
    `f`val set' x[3] x[2];
    $[
        `nop = f; x[2] +: 1;
        `acc = f; (x[2] +: 1; x[0] +: val);
        `jmp = f; x[2] +: val;
        `bruh
        ];
    x
    }

part1: {first {not x[2] in x 1} runinst/ (0; (); 0; x)}

swli: {desc where x[;0] in `nop`jmp}
swap: {.[x; y, 0; {$[`nop = x; `jmp; `nop]}]}
rtl: {{count[x 3] >= count x 1} runinst/ (0; (); 0; x)}
part2: {
    k: 2 #/: rtl each swap[x] each swli x;
    2 first/ k where count[x] = max each k[;1]
    }

0N! (part1; part2) @\: inputs;
\\
