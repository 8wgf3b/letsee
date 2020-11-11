\l utils.q

inputs: "J"$ .util.LoadEulerInput["1"]

show inputs

ThreeFiveSum: {
    sum max 3 5 {y * 0 = y mod x} \: 1 + til x - 1
    }


show ThreeFiveSum each inputs
\\
