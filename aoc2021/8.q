\l util.q


0N! sum raze (in[; 2 3 4 7] count each " " vs last " | " vs ::) @'inputs: ra21[];

decode: {
    x: asc @' x @: iasc count each x;
    ref: @[()!(); 1 4 7 8; :; x 0 2 1 9];
    ref[3]: c first where all @' (3 = count ref[7] inter ::; 5 = count ::) @\:/: c: -1_3_x;
    ref[9]: c first where all @' (5 = count ref[3] inter ::; 6 = count ::) @\:/: c;
    ref[6]: c first where all @' (1 = count ref[1] inter ::; 6 = count ::) @\:/: c; 
    ref[5]: c first where all @' (5 = count ref[6] inter ::; 5 = count ::) @\:/: c;
    ref[0]: c first where all @'(not any ref[6 9] ~\: ::; 6 = count ::) @\:/: c;
    ref[2]: c first where all @'(not any ref[3 5] ~\: ::; 5 = count ::) @\:/: c;
    get raze string ref? asc @' y
    }

0N! sum (decode . " " vs/: " | " vs ::) @' inputs;
\\
