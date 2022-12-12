\l util.q

dir: (0 1; 0 -1; 1 0; -1 0)
C: count I -1 + R: count I: ra22[]
E: #[R, C] -96 + "j"$ssr/[;"SE";"az"] raze I
sera: {,[;0] each (div[; C]; mod[;C]) @\:/: where x = raze I}
cond: {V:: V, enlist x; nx where (1 + E . x) >= 0W^E ./: nx: x +/: dir}
phim: {
    $["E" = I . c: 2#f: first x; x;
    all c in V; 1_x;
    1_ x, cond[c] ,\: 1 + last f]}
ans: {V :: (); .[; 0 2] (phim/) sera x}
ans each "Sa"
\\