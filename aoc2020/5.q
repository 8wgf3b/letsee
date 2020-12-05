\l utils.q

inputs: .util.LEI2[.z.f];

seatid: {(2 sv "R" = -3#x) + 8 * 2 sv "B" = 7#x}

part1: {max seatid each x}
part2: {first (min[li] + til count li) except li: seatid each x}

0N! (part1; part2) @\: inputs;
\\
