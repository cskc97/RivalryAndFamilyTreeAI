company(sumsum).
company(appy).
competitor(sumsum,appy).
develop(galacticas3,sumsum).

smartphonetech(galacticas3).
boss(stevey).
stole(stevey,galacticas3,sumsum).

rival(X) :- competitor(X,appy).
business(X) :- smartphonetech(X).
unethical(X):- boss(X), business(Y), company(Z),rival(Z), stole(X,Y,Z).
