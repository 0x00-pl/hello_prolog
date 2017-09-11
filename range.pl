
range(0,[0]):-!.
range(N,[NN|T]):-
 N1 is N-1,
 NN is N*N,
 range(N1,T).
