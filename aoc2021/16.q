\l util.q

hex2b: raze (-4#0b vs/: "0123456789ABCDEF"?) @'
opref: (sum; prd; min; max; raze; >/; </; =/)

eva: {#[l; x], " ", string get _[;x] l: last where x = "("}
inputs:  hex2b @' ra21[]
lit: {
    f: x 0;
    ind: ({$[x y; y + 5; y]}[f]/) 0;
    (l _ f; x[1], 2 sv f til[l: ind + 5] except 5 * til 1 + ind div 5)
    }

opop: {$[f 0; opop1; opop0] (1_ f: x 0; x 1)}

opop0: {l: 2 sv first f: 0 15 _ x 0;
    r: (pars/) (l#f 1; x 1);
    (l _ f 1; r 1)
    }

opop1: {l: 2 sv first f: 0 11 _ x 0;
    l pars/ (f 1; x 1)    
    }

pars: {
    if[0 = count f:x 0; :x];
    V:: V, 2 sv first f: 0 3 6 _ f;
    r: $[4 = o: 2 sv f 1; lit; opop] (f 2; x 1);
    (r 0; opref[o] r 1) 
    }

/ 0N! {opstk :: vstk :: V :: (); pars x} @' inputs;
/ 0N! {O:: ""; V:: (); pars x; get O} @' inputs;
