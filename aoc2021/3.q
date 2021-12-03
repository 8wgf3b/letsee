\l util.q

ep: not g: 0.5 < avg each inputs: flip "1" =/: ra21[];
0N! prd 2 sv/: (ep; g);

o2: {if[1 = count x; :x]; x group[r] 0.5 <= avg r: inputs[y; x]}
co2: {if[1 = count x; :x]; x group[r] 0.5 > avg r: inputs[y; x]}

prd 2 sv/: inputs @\:/: raze (o2/; co2/) .\: (til count inputs 0; til count inputs)
\\
