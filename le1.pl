p:- write(a).
p:- write(b).
p:- write(c).

pltwice(Exp):-
 call(Exp), fail;
 call(Exp), fail;
 true.

g(X):-
 X=1;
 g(X1), X is X1+1, (X=10, !; true).


g2(E,E,E):- !, fail.
g2(B,E,R):-
 R=B;
 B1 is B+1, g2(B1,E,R).

g2_10(R):-
 g2(0,10,R).

rx([], T, R):- R=T, !.
rx([Xh|Xr], T, R):-
 rx(Xr, [Xh|T], R).

db_r([], T, R):- R=T, !.
db_r([Xh|Xt], T, R):-
 db_r(Xt, [Xh, Xh | T], R).

db([],_):- !.
db([Xh|Xt], [Xh,Xh|R]):-
 db(Xt,R).
