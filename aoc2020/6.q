\l utils.q

clean: {$[0 = count y; :x, "\n"; "\n" = last x; :x, y; :x, " ", y]}
inputs: "\n" vs (clean/) .util.LEI2[.z.f];

part1: {sum {count distinct x where " " <> x} each x}
part2: {sum {count (inter/) " " vs x} each x}

0N! (part1; part2) @\: inputs;
\\

