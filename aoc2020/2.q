\l utils.q


0N!inputs: .util.LEI2[.z.f];

occurcheck: {(sum raw[1;0] = raw 2) within "J"$/: "-" vs first raw: " " vs x}
poscheck: {(<>). raw[1;0] = raw[2] -1 + "J"$/: "-" vs first raw: " " vs x}

part1: {sum occurcheck each x}
part2: {sum poscheck each x}

0N! (part1; part2)@\: inputs;
\\

