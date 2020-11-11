\l utils.q

0N!inputs: "J"$ .util.LoadEulerInput["3"];


ReduceFactor: {{(x > y) & 0 = x mod y}[;y] {x div y}[;y]/x}


/ TODO: we can reduce numbers since primes are of 6k+1, 6k-1
LargestPrimeFactor: {
    x ReduceFactor/ 2 + til -1 + ceiling sqrt x
    }


0N!LargestPrimeFactor each inputs;


\\
