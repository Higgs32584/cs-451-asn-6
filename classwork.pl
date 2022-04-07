greatgrandchild(GGC,GP):- parent(GP,Child),parent(Child,GrandC),parent(GrandC,GGC). 
brotherinlaw(Bil,P):-man(Bil),sibling(P,sister).
