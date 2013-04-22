hello_world :- write('Hello World!').
L = [1, 3, 4, 2, 5].

mp(E, [E|_]):- !.
mp(E, [_|L]):- mp(E,L).