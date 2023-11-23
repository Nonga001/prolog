move(1, A, B, _):-
    write('move top disk from'),
    write(A),
    write('to'),
    write(B),
    p1.
move(P, A, B, C):-
    P>1,
    S is P-1,
    move(S, A, B, C),
    move(1, A, B, _),
    move(S, C, B, A).

hanoi(N):-
    move(N, 'A', 'C', 'B').
