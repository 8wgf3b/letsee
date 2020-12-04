\l utils.q

reqf: reverse each ("byr"; "iyr"; "eyr"; "hgt"; "hcl"; "ecl"; "pid");
clean: {$[0 = count y; :x, "\n"; "\n" = last x; :x, y; :x, " ", y]}
inputs: "\n" vs (clean/) .util.LEI2[`4.q];

colors: ("amb"; "blu"; "brn"; "gry"; "grn"; "hzl"; "oth")
rngcheck: {("J"$y) within x};
checkbyr: rngcheck 1920 2002
checkiyr: rngcheck 2010 2020
checkeyr: rngcheck 2020 2030
checkhgt: {$["cm" ~ un:-2#x; rngcheck[150 193; -2_x]; "in" ~ un; rngcheck[59 76; -2_x]; 0b]}
checkhcl: {("#" = x 0) and (6 = count (1_x) inter .Q.n, 6#.Q.a)}
checkecl: {any colors ~\: x}
checkpid: {(9 = count x) and x ~ x inter .Q.n}

valid: {all any each reqf ~/:\: x @/: -1 + (where ":" = x) -\: til 3}

checker: (!) . (reverse @; get `$ "check", reverse @) @/:\: reqf;
checker,: (enlist "cid") ! 1#{1b};

valid2: {all checker ./:  {":" vs x} each " " vs x}

part1: {sum valid each x}
part2: {sum valid2 each x where valid each x}

0N! (part1; part2) @\: inputs;
\\
