isa(bird, animal).
isa(fish, animal).
isa(ostrich, bird).
isa(penguin, bird).
isa(canary, bird).
isa(robin, bird).
isa(opus, penguin).
isa(tweety, canary).


hasproperty(bird, travel, fly).
hasproperty(fish, travel, swim).
hasproperty(ostrich, travel, walk).
hasproperty(penguin, travel, walk).

hasproperty(bird, cover, feathers).
hasproperty(animal, cover, skin).

hasproperty(canary, colour, yellow).
hasproperty(penguin, colour, brown).
hasproperty(robin, colour, red).
hasproperty(tweety, colour, white).

hasproperty(robin, sound, sing).

whatisa(Object, Parents) :- 
	isa(Object, Parents).

%% property(Object, Property, Value):-

/*whatISA(Object, Parents) :- write('isa are:'),nl, isa(Object, Parents), write('aaa' + Object), write(Parents),nl,
fail.
*/


relation(X, Y) :- isa(X, Y).
relation(X, X). 							%%create a set contain Object it self and its Parents
whatProperty(Object, Property, Value) :-
	relation(Object, Parents),
	hasproperty(Parents, Property, Value).

