\l utils.q

inputs: "J"$ .util.LoadEulerInput["2"]

show inputs

EvenFibSum: {
    {sum x * 0 = x mod 2} {x >= last y}[x;] {x, sum -2#x}/ 1 1
    }

show EvenFibSum each inputs

\\
