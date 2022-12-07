\l util.q

pwd: ()
cd: {pwd :: $[x = `$".."; -1 _ pwd; pwd, x]}
parser: {$["cd" ~ @[;1] L: " " vs y; [cd `$last L; x];
    ("ls" ~ L[1]) or L[0] ~ "dir"; x;
    @[x; (-1_)\[pwd]; $["J"; L 0] + ^[0] ::]
    ]}
sum prop where 100000 >= prop: parser/[()!"j"$(); I: ra22[]]
min prop where prop >= first[prop] - 40000000
\\