

len([], 0).
len([_ | Tail], Length) :-
    len(Tail, Length1),
    Length is Length1 + 1.


at(Cu, Pos, List, PeriousList, Item, Remainder):-
	[It|AfterList] = List, 
	( 
	Cu = Pos ->
	append(PeriousList, AfterList, Remainder),
	Item = It
	;
	CuN is Cu+1,
	append(PeriousList, [It], NewPeriousList),
	at(CuN, Pos, AfterList, NewPeriousList, Item, Remainder)
	).

removeat(List,Position, Item, Remainder):-
	len(List, Length),
	%% write(Length),
	(Length >= Position, Position > 0 ->
		
		at(1, Position, List, [], Item, Remainder)

	;
		write('Position is invalid'),
		Item = null,
		Remainder = List,
		fail
	).


:- write('test position: 4  [1,2,3,4,5,6]:').
:-removeat([1,2,3,4,5,6], 4, Item, Remainder),nl,write(Item), nl,write(Remainder).

:- write('\n\ntest 5  [a,b,c,d,f,e,g,h,j,k],:').
:-removeat([a,b,c,d,f,e,g,h,j,k], 5, Item, Remainder),nl,write(Item), nl,write(Remainder).

:- write('\n\ntest 50  [1,2,3,4,5,6]:').
:-removeat([1,2,3,4,5,6], 50, Item, Remainder),nl,nl,write('end').

%% 