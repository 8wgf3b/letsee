\l utils.q


0N!inputs: .util.LEI2[.z.f];

slopes: (1; 3; 5; 7; 1),' (1; 1; 1; 1; 2)

/ x -> right slope; y -> down slope; z -> input matrix
treechecker: {
    bre: count z -1 + hei: count z;
    lcount: count ltrav: -1_{x > y}[hei] {x + y}[y]\ y;
    btrav: -1_lcount {mod[z + y; x]}[bre; x] \ x;
    sum "#" = z ./: ltrav,' btrav
    }

part1: treechecker . slopes[1]
part2: {prd "j"$ treechecker[;;x] ./: slopes} 

0N! (part1; part2) @\: inputs;
\\
