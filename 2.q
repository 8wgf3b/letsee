\l utils.q

inputs: "J"$ .util.LoadEulerInput["2"]

show inputs

EvenFibSum: {
    l: {x >= last y}[x;] {x, sum -2#x}/ 1 1;
    sum l[where 0 = l mod 2]
    }

show EvenFibSum each inputs

\\
