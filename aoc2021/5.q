\l util.q

inputs: flip `S1`S2`E1`E2! flip (get ssr[;" -> "; ","] ::) @' ra21[]

gf: {$[0 < d: y - x; x + til 1 + d; x - til 1 + neg d]}
IP: {[s1; s2; e1; e2] 
    $[s1 = e1; 
    #[count i; s1],' i: gf . s2, e2; 
    s2 = e2;
    i,' #[count i: gf . s1, e1] s2; 
    flip (s1, s2) gf' e1, e2]
    }

sol: count where 1 < count each group raze (IP . value ::)@' ::

0N! sol select from inputs where (S1=E1) or S2=E2;
0N! sol inputs;
\\
