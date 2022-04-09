%PURPOSE check if list is empty
%INPUT list 
%OUTPUT:boolean
myisempty([]).

%PURPOSE:mysubset(S1, S2) is true if set S1 is a subset of (included in) set S2
%INPUT:list S1 and list S2
%OUTPUT: Boolean

mysubset([],[]).
mysubset([],[_|_]).
mysubset([X|Xs],Ys):- member(X,Ys),mysubset(Xs,Ys).


%PURPOSE:is true if the sets S1 and S2 are equal
%INPUT: list S1 and list S2 are equal
%OUTPUT: Boolean

mysetequal([],[]).
mysetequal(Xs,Ys) :- mysubset(Xs,Ys),mysubset(Ys,Xs).

%PURPOSE: is true if set I is the intersection of the sets S1 and S2.
%INPUT: list S1, list S2 and list I
%OUTPUT: boolean
%myintersection(S1, S2, I) 

myintersection([], _, []).

myintersection([H1|T1], L2, [H1|I]) :-
    member(H1, L2),
    myintersection(T1, L2, I).

myintersection([_|T1], L2, I) :- myintersection(T1, L2, I).

test1t :-
	myisempty([]).
test2t :-
	mysubset([1,3,2], [4,2,1,3,5]).
test1f :-
	myisempty([1,2,3]).
test2f :-
	mysubset([10],[4,2,1,3,5]).
