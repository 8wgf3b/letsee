\l utils.q

0N!inputs: {"J"$" " vs x} each .util.LEI2[.z.f];

BoundCheck: {0 < x + y - count z}

hori: {[m; i; j; n] if[BoundCheck[j;n;m]; :0]; prd m[i; j + til n]}
vert: {[m; i; j; n] if[BoundCheck[i;n;m]; :0]; prd m[i + til n; j]}
diag: {[m; i; j; n] if[(|/) (BoundCheck i,j)[n;m]; :0]; prd (m . (i, j) +\: til n) @' til n}
adiag: {[m; i; j; n] if[BoundCheck[j;n;m] | 0 > l:1 + i - n; :0]; prd (m . (l, j) +\: til n) @' n - 1 + til n}

maxdir: {[m; n; i; j] max (hori, vert, diag, adiag) .\: (m; i; j; n)}

maxprod: {[m; n] max maxdir[m; n] ./: l cross l: til count m}

0N! maxprod[inputs; 4];
\\
