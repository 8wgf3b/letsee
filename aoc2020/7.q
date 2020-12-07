\l utils.q

inputs: flip `outer`inner`quantity ! "ssi"$\: ()
/ x-> input table, y-> raw row
clean: {
    y: ssr[; " bag"; ""] ssr[; " bags"; ""] _[-1] y;
    t2: "," vs last t1: "contain" vs y except " ";
    x upsert flip (`$ first t1) , (`$ _[1]@; 0^"I"$ #[1]@) @/:\: t2
    }
clean[`inputs] each .util.LEI2[.z.f];

/ x-> bag, y-> container list, z -> input table
allouters: {y union exec outer from x where inner in y}
getinners: {exec inner, quantity from y where outer=x}

part1: {-1 + count (allouters[y]/) x}[`shinygold]
part2: -1 + {if[`oother = x; :0] 1 + inn[`quantity] wsum .z.s[;y] @/: (inn: getinners[x; y]) `inner}[`shinygold] @

0N!(part1; part2) @\: inputs;
\\
