\l utils.q

inputs: "J"$ .util.LoadEulerInput["1"]

show inputs

ThreeFiveSum: {
    l: 1 + til x - 1;
    sum l[where (0 = l mod 3) or 0 = l mod 5]
    }


show ThreeFiveSum each inputs
\\
