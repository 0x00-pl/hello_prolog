
print_range(End,End).
print_range(Beg,End):-
 write(Beg), nl,
 Beg1 is Beg+1,
 print_range(Beg1,End).

