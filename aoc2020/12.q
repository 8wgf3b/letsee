\l utils.q

inputs: {(`$ x 0; "J"$ 1_x)} each .util.LEI2[.z.f]
init: {`pos`dir`way set' (x; y; z)};
F.1: {move1[dir 0; x]}
R.1: {dir:: (x div 90) rotate dir}
L.1: R.1 neg @
N.1: {pos:: pos[0], x + pos 1}
E.1: {pos:: (x + pos 0), pos 1}
W.1: {pos:: (pos[0] - x), pos 1}
S.1: {pos:: pos[0], pos[1] - x}
move1: inst! (get sv[`]@) each (inst:`F`R`L`N`E`W`S) ,\: `1

part1: {
    init[0 0; `E`S`W`N; 0 0];
    move1 ./: x;
    sum abs pos
    }

rf: {7h$ x 1.5708 * y % 90}
`s`c set' (rf sin; rf cos);
F.2: {pos:: pos + way * x}
L.2: {way:: ((way[0] * c x) - way[1] * s x), (way[0] * s x) + way[1] * c x}
R.2: L.2 neg @
N.2: {way:: way[0], x + way 1}
E.2: {way:: (x + way 0), way 1}
W.2: {way:: (way[0] - x), way 1}
S.2: {way:: way[0], way[1] - x}
move2: inst! (get sv[`]@) each (inst:`F`R`L`N`E`W`S) ,\: `2

part2: {
    init[0 0; `E`W`S`N; 10 1];
    move2 ./: x;
    sum abs pos
    }

0N! (part1; part2) @\: inputs;
\\
