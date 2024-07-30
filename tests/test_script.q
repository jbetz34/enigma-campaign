// don't let the testing get out of hand
system"T 60"

\d .test

tests:update cfg:{"|" vs x}each cfg from ("***";1#",") 0: `:plugboard_tests.csv;

run:{[f] t:.z.P; res:.[f'] tests`cfg`msg; T:.z.P-t; A:res~tests`res; L:count .Q.s1 f; :`correct`time`length!(A;T;L)};

\d .

if[count .z.x; f:value " " sv .z.x; show .test.run f; exit 0];
