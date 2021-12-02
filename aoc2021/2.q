\l util.q

\d .pos
x: y: aim: 0;
forward: {.pos.x +: x}
up: {.pos.y +: x}
down: {.pos.y -: x}
init: {.pos.aim: .pos.x: .pos.y: 0}

\d .
(.pos .) each inputs: (`$ first ::;"I"$ last ::) @\:/: " " vs/: ra21[];
abs (*/) .pos `x`y

.pos ,: `up`forward`down ! ({.pos.aim -: x}; {.pos.x +: x; .pos.y +: x * .pos.aim }; {.pos.aim +: x})
.pos.init[];
(.pos .) each inputs;
abs (*/) .pos `x`y

\\
