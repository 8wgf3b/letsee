\l util.q

dir: `L`R`U`D ! (0 -1; 0 1; 1 0; -1 0)
adj: {$[not any A: 1 < abs D: x - y; y; ?[A; x - signum D; x]]}
sim: {@[; 0; :; f] @[x; 1_ til count x; :; adj\[f: x[0] + y;] 1_ x]}
path: sim\[10 2#0; ]I: raze {#[x[1], 2] dir x 0} each ("SJ"; " ") 0:/: ra22[]
(count distinct path @') each 1 9
\\