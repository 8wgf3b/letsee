\l util.q

ran: get first inputs: ra21[];
boards: (get @' 1 _ :: ) @' 6 cut a: 1_inputs;

mark: {@[y; where y = x; :; 0N]}
marktable: {x mark/: y}
hvcheck: {any all @' x, flip x}

p1checker: {not any p1ind::hvcheck @' null x 0}
res: p1checker {(ran[x 1] marktable/: x 0; 1 + x 1)}/ (boards; 0);
0N! prd (sum raze .[; 0, where p1ind]:: ; ran -1 + last::) @\: res;

p2checker: {1 <> sum not p2ind:: hvcheck @' null x 0}
res: p2checker {(ran[x 1] marktable/: x 0; 1 + x 1)}/ (boards; 0);
res1: {not hvcheck null x 0} {(marktable[ran x 1] x 0; 1 + x 1)}/ (res . 0, where not p2ind; -1 + res 1)
0N! prd (sum raze first:: ; ran -1 + last::) @\: res1;
\\
