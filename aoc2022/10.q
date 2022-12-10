\l util.q
 
X: 1
p1: {x: x, X; if[not null y; x: x, X; X +:: y]; x}
S: ,[; X] p1/[();] I: raze (" J" ; " ") 0: ra22[]
sum i * S -1 + i: 20 + 40 * til 10
show {.[x; div[y; 40], y mod 40; :; $[1 < abs S[y] - y mod 40; " "; "#"]]}/[6 40#" "; til 240];
\\