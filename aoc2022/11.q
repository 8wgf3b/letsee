\l util.q

old: 0N;
`S`F`C set' (raze get  18_ @[;1] ::; 19_ @[;2] ::; raze "J"$ -1#/:" " vs/: -3#-1_) @/:\: I: 0N 7# ra22[], enlist "";
bf: {
    if[not count x y; :x];
    old :: x . y, 0; 
    x: @[x; $[not a mod C . y, 0; C . y, 1; C . y, 2];,; ] a: $[z; div[;3]; mod[; prd C @' 0]] get F y;
    @[x; y; 1_]
    }

step: {@[`CM; z; +; count y z]; bf[; z; x]/[y]}
ans: {CM :: #[;0] N: count S; step[x]/[S; (y * N)# til N]; prd 2# desc CM}
10b ans' 20 10000
\\