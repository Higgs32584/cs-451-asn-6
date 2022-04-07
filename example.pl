/*
  File example for the course of Programming Languages
  Author: Prof. Henrique Rocha

  Abraham family described in the Bible.
  <https://en.wikipedia.org/wiki/Isaac#Family_tree>
*/

% Facts
% man(man)
man(abraham).
man(ishmael).
man(isaac).
man(esau).
man(jacob).
man(joseph).
man(simeon).
man(reuben).
man(levi).
man(judah).
man(dan).
man(naphtali).
man(gad).
man(asher).
man(issachar).
man(zebulun).
man(benjamim).
man(eliphaz).
man(korah).

% woman(woman)
woman(sarah).
woman(hagar).
woman(rebecca).
woman(rachel).
woman(bihah).
woman(zilpah).
woman(leah).
woman(dinah).
woman(adah).
woman(aholibamah).

% married(man, woman).
married(abraham,sarah).
married(abraham,hagar).

married(isaac,rebecca).

married(jacob,rachel).
married(jacob,bihah).
married(jacob,zilpah).
married(jacob,leah).

married(esau,adah).
married(esau,aholibamah).

% parent(Father,child).
parent(abraham,isaac).
parent(abraham,ishmael).

parent(isaac,jacob).
parent(isaac,esau).

parent(jacob,joseph).
parent(jacob,simeon).
parent(jacob,reuben).
parent(jacob,levi).
parent(jacob,judah).
parent(jacob,dan).
parent(jacob,naphtali).
parent(jacob,gad).
parent(jacob,asher).
parent(jacob,issacar).
parent(jacob,zebulun).
parent(jacob,benjamim).
parent(jacob,dinah).

parent(esau,eliphaz).
parent(esau,korah).

% parent(Mother,child).
parent(sarah,isaac).
parent(hagar,ishmael).

parent(rebecca,jacob).
parent(rebecca,esau).

parent(rachel,joseph).
parent(leah,simeon).
parent(leah,reuben).
parent(leah,levi).
parent(leah,judah).
parent(bihah,dan).
parent(bihah,naphtali).
parent(zilpah,gad).
parent(zilpah,asher).
parent(leah,issacar).
parent(leah,zebulun).
parent(rachel,benjamim).
parent(leah,dinah).

parent(adah, eliphaz).
parent(aholibamah,korah).



parent(abraham,Child),parent(Child,GrandChild),parent(GrandChild,GreatGrandChild)).


greatgrandchild(GGP,GGC):-parent(GGP,C),parent(C,GC),parent(GC,GGC).
