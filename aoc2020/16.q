\l utils.q

getcondfuncs: {
    dum: ($[`]@; {within[y;x]} @/: ("J"$ vs["-"] @) each vs["or"]@) @' ":" vs ssr[;" ";""] x;
    dum[1]: (or/) dum[1] @\:; dum
    }
`cond`mytick`nearby set' (0, where "" ~/: raw) _ raw: .util.LEI2[.z.f];
`mytick`nearby set' ("J"$ "," vs/: _[2]@) each (mytick; nearby); mytick: raze mytick
cond: (!) . flip getcondfuncs each cond

0N! part1: sum l * not any cond @\: l: raze nearby;
l: ok ind: iasc count each ok:(where all each cond @\:) each flip nearby where (all any cond @\:) each nearby
fields: ind ! raze (except':) l 
0N! part2: prd mytick where string[fields] like "departure*";
\\
