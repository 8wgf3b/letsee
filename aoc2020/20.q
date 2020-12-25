/ https://github.com/adotsch/aoc/blob/master/2020/day20.q

\l utils.q

inputs: (!) . flip {("J"$-4#-1_x[0];1_x)} each 1_/: cut[; raw] where "" ~/: raw: enlist[""], .util.LEI2[.z.f]

/ reverse'[t] does column wise
getborders: {reverse'[t], t: (first x; last'[x]; last x; first'[x])}

/ sum thing ' adverb composition
0N!part1: prd corners: where 2 = ({sum 1=x} ') matches: j {count[x inter y] div 2}/:\: value j: getborders'[inputs];

inputs: value inputs; cpos: key[matches]? corners;

/ Why adj matrix?
Paths: ((MM$)\) .  (-2 + n: "j"$sqrt count MM; MM: "f"$1=value matches)
nc: cpos[0], 1#where 1 = Paths[n - 2] cpos[0];

sp: cpos[0], raze {where[1 = Paths[x; cpos 0]] inter where 1 = Paths[n - x + 3; cpos 1]}' [til n - 2], cpos 1

/ /[sp] or wrap whole func (f)/ sp
sp: n cut {x, where[1 = MM[x count[x] - n]] except x}/[sp] 

rots: {{x, reverse'[x]} (reverse flip@)\ [x]};
hmir: {(x; reverse x)};        
right: {last'[x] ~ first'[y]}; 
left: {right[y; x]};
below: {last[x] ~ first y};
above: {below[y; x]}
join: {[x; y; p1; p2; f] t first where (any') (t: p1 x) f/:\: p2 y} 

/ join each tile , then first row , then rest
jeach: join[; inputs sp[1;0]; hmir; rots; below] join[inputs sp[0;0]; inputs sp[0;1]; rots; rots; right]
jr0: {join[y; x; rots; enlist; left]}\ [enlist[jeach], inputs 1_sp 0]
jrest: {join[;; rots; enlist; above]'[y; x]}\ [enlist[jr0], inputs 1_sp] 

/ ??????
img: raze (,'/)'[jrest]
n: count img: img[t; t: raze (1 + til count[jeach] - 2) +/: count[jeach] * til n]

pattern: ("                  # "; "#    ##    ##    ###"; " #  #  #  #  #  #   ")
mcord: raze {where "#" = x}'[pattern] + 0 1 2 * n; swind: raze til[n - 19] +/: n * til n - 2
check: {x: raze x; x[mcord +/: swind where count[mcord] = sum "." <> x swind +/: mcord]: "O"; n cut x}
0N! part2: min{sum sum x}'["#" = check'[rots img]];
\\ 
