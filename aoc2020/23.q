\l utils.q

inputs: "J"$/: raze .util.LEI2[.z.f];

/ works like linked list
init: {.g.next: count[0,x]#0; .g.next[x]: 1 rotate x;}
round: {
    pick: 1_ 3 .g.next\ x;
    dest: first except[;pick] 1 + (x - 2 + til 4) mod -1 + count[.g.next];
    first .g.next[(x; dest; pick 2)]: (.g.next pick 2; pick 0; .g.next dest)
    }

game: {init y; x round/ y 0;}

game[100; inputs];0N! part1: "" sv string 1_ 8 .g.next\ 1;
game[10000000; inputs, 10 + til 999991]; 0N! part2: prd 1_ 2 .g.next\ 1;
\\
