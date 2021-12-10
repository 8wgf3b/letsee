\l util.q

`tr`es`cs set' "([{<" !/: (")]}>"; 3 57 1197 25137; 1 2 3 4);
inputs: ra21[]
/ adotsch soln
stack: {$[-10h = type x; x; y in key tr; x, tr y; y = last x; -1_x; y]}/["";]
0N! sum es tr? errs where inc: 0 > type @' errs: stack @' inputs;
0N! "j"$med (5 sv reverse ::) @' cs tr? errs where not inc;
\\
