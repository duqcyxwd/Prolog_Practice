
loc_list([apple, broccoli, crackers], kitchen).
loc_list([desk, computer], office).
loc_list([flashlight, envelope], desk).
loc_list([stamp, key], envelope). 
loc_list(['washing machine'], cellar).
loc_list([nani], 'washing machine'). 


add_thing(NewThing, Container, NewList):- 
	loc_list(OldList, Container), 
	append([NewThing],OldList, NewList). 

put_thing(Thing,Place) :- 
	retract(loc_list(List, Place)), 
	asserta(loc_list([Thing|List],Place)).

%% loc_list(X, kitchen). 
%% ?- loc_list(X, kitchen). 
%% X = [apple, broccoli, crackers] 

%% ?- [_,X,_] = [apples, broccoli, crackers]. 
%% X = broccoli 

%% ?- [H|T] = [apple, broccoli, refrigerator].
%% H = apple 
%% T = [broccoli, refrigerator] 

%% ?- [H|T] = [a, b, c, d, e].
%% H = a
%% T = [b, c, d, e] 

%% ?- [H|T] = [apples, bananas].
%% H = apples 
%% T = [bananas]

%% ?- [H|T] = [a, [b,c,d]]. 这个例子中的第一层列表有两个项目。
%% H = a 
%% T = [[b, c, d]] 

%% ?- [H|T] = [apples]. 列表中只有一个项目的情况
%% H = apples
%% T = [] 

%% 空表不能与[H|T]匹配，因为它没有表头。

%% ?- [H|T] = []. 
%% no

%% ?- [One, Two | T] = [apple, sprouts, fridge, milk].
%% One = apple 
%% Two = sprouts 
%% T = [fridge, milk]