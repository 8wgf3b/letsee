\l util.q

fish: 0^ @[; til 9] count each group get first ra21[]

day: {@[x; 6; :; sum x 6 8]} 1 rotate ::

0N! sum 80 day/ fish;
0N! sum 256 day/ fish;

\\
