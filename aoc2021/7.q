\l util.q

crabs: get first ra21[]
0N! sum abs crabs - med crabs;
0N! "j"$ min sum {0.5 * x * 1 + x} abs crabs -\: (floor; ceiling) @\: avg crabs;
\\
