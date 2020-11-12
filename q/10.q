\l utils.q


/ https://qlearner.wordpress.com/2012/03/26/sieve-of-eratosthenes/

0N!inputs: "J"$ .util.LEI2[.z.f];

sieve: {
    $[
        0 = count x; :();
        x[0] > sqrt last x; :x;
        k, .z.s raze {$[0 = y mod x; (); :y]}[k:x[0]] each 1_x
        ]
    }

PrimeSum: {sum sieve 2 + til x - 1}

0N! PrimeSum each inputs;
\\
