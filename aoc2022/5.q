\l util.q

`M`I set' cut[;I] 0, where "" ~/: I: ra22[];
M: rtrim each flip {x 1 + 4 * til 1 + count[x] div 4} each reverse -1_M
I: flip @[;1 2; -; 1i] (" i i i";" ") 0: 1_I 
f1: {@[;y 1; _[neg y 0]] @[;y 2; ,; reverse neg[ y 0]#x y 1] x}
f2: {@[;y 1; _[neg y 0]] @[;y 2; ,; neg[ y 0]#x y 1] x}
last each f1/[M;I]
last each f2/[M;I]
\\