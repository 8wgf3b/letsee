\l utils.q

0N!inputs: "J"$ .util.LoadEulerInput["4"];

NumOfNDigits: {7h$ n + til "j"$9 * n:10 xexp x - 1}

LastPalProduct: {last a where {x ~ reverse x} each a: string asc distinct raze l *\: l: NumOfNDigits x }

0N!LastPalProduct each inputs;

\\

