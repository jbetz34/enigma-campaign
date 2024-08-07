if[not count .z.x; -1"not enough arguments provided.\nusage:\n\t q <testWeek> <testCode>";exit 0];

// don't let the testing get out of hand
system"T 60"

\d .test

week:`$first .z.x;
config:?[;enlist (=;`week;1#week);0b;()] ("SSS**";1#",") 0: `:tests.cfg;
tests:flip config[`column]!(raze config`type;",") 0: hsym first config`file;
tests:![tests;();0b;{x[1]!flip x}exec (value'[custom];column) from config where 0<count each custom];

run:{[f] t:.z.P; res:.[f'] tests`cfg`msg; T:.z.P-t; A:res~tests`res; L:count .Q.s1 f; :`correct`time`length!(A;T;L)};

\d .

if[count cmdline:1_.z.x; f:value " " sv cmdline; show .test.run f; exit 0];
