winner([]).
winner([X|Xs]) :- homogenous(X),winner(Xs).
homogenous([]).
homogenous([_]).
homogenous([X,X|Xs]) :- homogenous([X|Xs]).


no(Xs) :- not(homogenous(Xs)).


test :-
	winner([[r,r,r,r],[g,g,g,g],[b,b,b,b]]).
