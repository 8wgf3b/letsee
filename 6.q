\l utils.q


0N!inputs: "J"$ .util.LoadEulerInput[first raze string ` vs .z.f];

SumSquareDifference: {
    {x*x}[sum l] - sum {x*x} l: 1 + til x
    }

0N! SumSquareDifference each inputs; 
\\
