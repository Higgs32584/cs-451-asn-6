IsMember(X,[X | _ ]).
# member(X,[_]).
# inc(A,B):- B is A + 1.
# main(N):- mem(N,[1,2,3,4]),happy(N).
solve :- InitPerm(L,P),perm(L,P)
