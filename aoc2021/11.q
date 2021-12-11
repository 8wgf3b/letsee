\l util.q

flashtep: {.[; y; :; 0N] (.[; ; +; 1]/[x;]) ci where all @' within[; 0 9] ci: y +/:  _[;4] k cross k: -1 + til 3}
flash: {x flashtep/ ind where 9 < x ./: ind: l cross l: til 10}
step: 0^ (flash/) 1 + ::
0N! (sum/) 0 = 100 step\ inputs: -48 + "j"$ra21[];
0N! first {100 <> (sum/) 0 = x 1} {(1 + x 0; step x 1)}/ 0, enlist inputs;
\\
