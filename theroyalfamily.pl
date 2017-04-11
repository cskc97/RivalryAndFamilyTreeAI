male(charles).
male(andrew).
male(edward).
female(ann).
female(elizabeth).
monarch(elizabeth).
queen(elizabeth).
offspring(charles,elizabeth).
offspring(ann,elizabeth).
offspring(andrew,elizabeth).
offspring(edward,elizabeth).
elder_than(charles,ann).
elder_than(ann,andrew).
elder_than(andrew,edward).

succession(X) :- offspring(X,Z),monarch(Z),male(X), elder_than(X,Y).
succession(X) :- offspring(X,Z),monarch(Z),male(X), not(elder_than(X,Y)).
succession(X) :- offspring(X,Z),monarch(Z),female(X), elder_than(X,Y).
succession(X) :-  offspring(X,Z),monarch(Z),female(X), not(elder_than(X,Y)).
