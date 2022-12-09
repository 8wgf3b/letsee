\l util.q

ind: d cross d: til N: count I: -48 + "j"$ ra22[]
spl: {_[0, x] _[;x] y}
lrtb: {(4#(reverse; ::)) @' (spl[x 1] I x 0), spl[x 0] I @' x 1}
sum {$[any (0, N - 1) in x; 1b; any (all >[I . x] ::) each lrtb x]} each ind
max {$[any (0, N - 1) in x; 0; prd {count[y]^ 1 + first where not >[x] y}[I . x] each lrtb x]} each ind
\\