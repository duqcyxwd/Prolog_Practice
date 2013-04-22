room(kitchen).
room(office).
room(hall).
room('dining room').
room(cellar).
door(office, hall).
door(kitchen, office).
door(hall, 'dining room').
door(kitchen, cellar).
door('dining room', kitchen).

location(desk, office).
location(apple, kitchen).
location(flashlight, desk).
location('washing machine', cellar).
location(nani, 'washing machine').
location(broccoli, kitchen).
location(crackers, kitchen).
location(computer, office).

edible(apple).
edible(crackers).
tastes_yucky(broccoli).
here(kitchen).


room_report:- write('Known rooms are:'),nl, room(X), write(X),nl,
fail.

location_report:- write('Known location are:'),nl, location(Thing, Place),write(Thing), write(Place) ,nl,
fail.

:- room_report.