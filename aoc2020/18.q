\l utils.q

inputs: ssr[;" ";""] each .util.LEI2[.z.f]

part1: {sum (value {$["(" ~ x; ")"; ")" ~ x; "("; x]} each reverse @) each x}

getintinds: {neg[z] + {x[y] in .Q.n}[x] {x + y}[z]/ y + z} 
noplus: {
    $[
        count[x] = loc: x?"+"; string value x;
        [
            e: getintinds[x;loc] @/: -1 1;
            (e[0]#x), .z.s string[value x e[0] + til 1 + e[1] - e[0]], (e[1]+ 1 - count x)#x
        ]
    ]   
    }
nobrac: {
    $[
        count[x] = e: x? ")"; noplus x;
        .z.s (b# x), (string value noplus x 1 + b + til e - 1 + b: last where "(" = x til e), (1 + e - count x)#x
        ]
    }
part2: sum (value nobrac @) @/:

0N! (part1; part2) @\: inputs;
\\
