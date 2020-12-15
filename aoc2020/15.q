\l utils.q

inputs: "J"$ "," vs raze .util.LEI2[.z.f]; init: {`lo set x};

nextramb: {
    if[(0 <> diff: count[x] - 1 + lstv) and not null lstv: lo lst: last x; lo[lst]:: -1 + count[x]; :x, diff];
    lo[lst]:: -1 + count[x]; x, 0
    }

nthramb: {init[(`u#y)! til count y]; (x - count y) (nextramb@)/ y}

`part1`part2 set' (last nthramb[2020] @; last nthramb[30000000] @);
 
