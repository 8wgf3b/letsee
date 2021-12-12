\l util.q

/ copied from adotsch soln. Trying to decode

small: n where n = lower n: key adj: group (!) . flip reverse'[l], l: `$"-" vs/: ra21[]

paths: {raze {$[`end=last y; enlist y; count nex: x y; y,/: nex; ()]}[x] each y}

p1next: {adj[last x] except x inter small}
p2next: {$[1 < max small# count each group x; p1next x; adj[last x] except `start]}

0N! {count (paths[x]/) enlist 1#`start}@' (p1next; p2next);
