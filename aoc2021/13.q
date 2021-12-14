\l util.q

br: first where "" ~/: inputs: ra21[]
dots: get @' br#inputs
inst: (raze "=" vs 11 _ ::) @'  _[br + 1] inputs
trans: {$[
        (y[0] > v: get 1_ x) & "x" = f: first x;
        (v + v - y 0; y 1);
        (y[1] > v: get 1_ x) & "y" = f: first x;
        (y 0; v + v - y 1);
        y
        ]
    }
f: {distinct y trans/: x}
0N!count f[dots; inst 0];
-1 a: .[; ; :; "x"]/[(reverse 1 + max c)#"";] reverse'[c: dots f/ inst];
/ 0N! will not render. So, render by typing 'a' on interpreter
