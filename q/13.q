\l utils.q

inputs: reverse (sum -48 + 7h$ ::) each flip .util.LEI2 .z.f;

add: {y + x div 10}

0N! 10#last[rd], reverse last each -1_ rd: string (add\) inputs;

\\
