\l utils.q


0N!inputs: "J"$ .util.LEI2[.z.f];

nextprime: {x, {not all y mod x}[x] {x + 2}/ last x}

nthprime: {
    if[x < 3; :x + 1];
    last (x - 2) nextprime/ 2 3
    }

0N! nthprime each inputs;

\\ 
