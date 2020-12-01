\l utils.q

0N!inputs: "J"$ .util.LEI2[.z.f];

part1: {prd first l where 2020 = sum each l: x cross x}

part2: {prd first l where 2020 = sum each l: x cross x cross x}

0N! (part1; part2)@\: inputs;
\\
