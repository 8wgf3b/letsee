\l utils.q

/ https://www.xarg.org/puzzle/project-euler/problem-9/

0N!inputs: "J"$ .util.LEI2[.z.f];

PythTripProd: {
    c: lo + til (x div 2) - lo: 1 + x div 3;
    aminb: first aminb loc: where (aminb = floor aminb) and 0 < aminb: sqrt (c*c) - x * x - 2 * c;
    7h$(x - b + c) * c * b: 0.5 * x + aminb - c:first c[loc]
    }

0N! PythTripProd each inputs;

\\
