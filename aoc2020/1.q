\l utils.q

0N!inputs: "J"$ .util.LEI2[.z.f];

sumpro: {prd first l where 2020 = sum each l: x cross x}

sumpro2: {prd first l where 2020 = sum each l: x cross x cross x}

0N! (sumpro; sumpro2)@\: inputs;
\\
