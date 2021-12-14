\l util.q

S: count each group -1_ s,' -1 xprev s: first inputs: ra21[]
R: (!) . flip (2#; @[;(0 6; 6 1)]) @\:/: 2_inputs
step: {1_ @[; ; +; ]/[(enlist 1#"")!1#0; R key x; value x]}
res: {(-/) (max; min) @\:  1_@[; last s; +; 1] @[; ; +; ]/[(1#"")!1#0; first @' key x; value x]}
0N! res 10 step/ S;
0N! res 40 step/ S;

/ TODO tryout confusedlizard's matrix method
\\
