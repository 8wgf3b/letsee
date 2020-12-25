\l utils.q

`k1`k2 set' "J"$.util.LEI2[.z.f]; m: mod[;20201227]
transform: {last {0 < x 1} {(m x[0] * x 0; x[1] div 2; $[1 = x[1] mod 2; m prd x 0 2;x 2])}/ (m x; y; 1)}

0N!s2: -1 + first {k2 <> x 1} {(1 + x 0; transform[7] x 1)}/ 0 0;
0N! transform . k1, s2;
\\
