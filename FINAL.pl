myisempty([]).

mysubset([],[]).

mysubset([X|_],[X|_]).
mysubset([X],[X]).


homoNo(Y,[Y|_]).
homoNo(Y,[_|Ys]) :- homoNo(Y,Ys)


idea2([Y|_],[Y|_]).

idea2([_|Xs],[_|Ys]) :- idea2(Xs,Ys)


