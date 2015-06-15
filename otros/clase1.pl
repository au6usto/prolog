gato(tom).
gato(garfierld).
raton(jerry).
enemigos(X,Y):- gato(X), raton (Y).
enemigos(X,Y) :- raton(X), gato(Y).
amigos(X,Y) :- gato(X), gato(Y).