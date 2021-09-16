\l utils.q

0N! inputs: "J"$ .util.LEI2 .z.f;

cnt: {(1 + y <> x % y) * 0 = x mod y}

numodiv: {0 ^ sum cnt[x] each 1 + til "j"$ sqrt x}

twelve: {last {x >= numodiv y 1}[x] {(1 + x 0; sum x)}/ 2 1}

0N! twelve each inputs;

\\
