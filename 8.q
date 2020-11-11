\l utils.q


0N!inputs: -48 + "j"$raze .util.LEI2[.z.f];

ncp: {prd 0^y z + til x}

mncp: {max ncp[y;x] each til count x}

mncp2: mncp[inputs]

0N!mncp2[4];
0N!mncp2[13];

\\
