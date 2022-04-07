homogenous([]).
homogenous([_]).
homogenous([Y, Y|Ys],[X, X|Xs]) :- homogenous([Y|Ys],[X|Xs]).

homoNo([Y],[Y|_]).

homoNo([Y],[_|Ys]) :- homoNo([Y],Ys).
