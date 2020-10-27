\l utils.q

0N!inputs: "J"$ .util.LoadEulerInput["5"];

lcm: {x * y div last {0 <> x 0} {x[1]: x[1] mod x[0]; reverse x}/ (x;y)}

lcms: {1 lcm/ 2 + til x - 1}

0N! lcms each inputs;

\\
