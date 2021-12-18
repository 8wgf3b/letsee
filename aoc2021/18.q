\l util.q

gfp: (>) prior 4 < sums {$["[" = x; 1; "]" = x; -1; 0]} @'
glp: in[;.Q.n] -1 xprev
N: count inputs: ra21[]

al: {
    if[null e: last where c: x in .Q.n; :x];
    b: last where (<) prior c;
    s:$[b >= e; _[0, e, b];  _[0, 1 + b, e]] x;
    raze @[s; 1; :; string y + get s 1]
    }

ar: {
    if[null b: first where c: x in .Q.n; :x];
    e: first where (<) prior c;
    s: _[0, b, e] x;
    raze @[s; 1; :; string y + get s 1]
    }
    
xplo: {
    if[null b: first where (&/) (gfp; glp) @\: x; :x];
    e: 1 + b + first ?[; "]"] b _ x;
    ind: ,[;e] 0, b +: last where "[" = sublist[b, e - b] x;
    lr: get @[; 1] s: ind _ x;
    al[s 0; lr 0], "0", ar[s 2; lr 1]
    }

r2p: ,["[";] ,[;"]"] "," sv string (floor; ceiling) @\: %[;2] get ::
spl: {
    if[not any c1: 10 < get ?[x in .Q.n; x; " "]; :x]
    b: where (>) prior c: x in .Q.n;
    b: b first where c1;
    e: first d where b < d: where (<) prior c;
    s: _[0, b, e] x;
    raze @[s; 1; :; r2p s 1] 
    }

round: (spl/) (xplo/) ::
SNred: (round/) ::
add: {SNred "[", x, ",", y, "]"}
pars: {get ssr/[x;(","; "[[]"; "[]]"); ";()"]}
mag: {sum 3 2 * $[type x; x; mag[x 0], mag x 1]}
0N! mag pars (add/) inputs;
0N! max (mag pars add .) @' inputs ll where not (=/) @' ll: l cross l: til N;

/ TODO: Need more efficiency
/ TREEMETHOD???
/ http://archive.vector.org.uk/art10500340
