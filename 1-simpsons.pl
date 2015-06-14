hombre(homero).
hombre(bart).
hombre(abraham).
hombre(mrburns).
hombre(clancy).
hombre(millhouse).
hombre(seymour).
hombre(skinner).
hombre(kang).

mujer(lisa).
mujer(maggie).
mujer(marge).
mujer(selma).
mujer(paty).
mujer(jacqueline).
mujer(mona).

progenitor(abraham,homero).
progenitor(mona,homero).
progenitor(jacqueline,marge).
progenitor(clancy,marge).
progenitor(jacqueline,paty).
progenitor(clancy,paty).
progenitor(jacqueline,selma).
progenitor(clancy,selma).
progenitor(homero,bart).
progenitor(marge,bart).
progenitor(homero,lisa).
progenitor(marge,lisa).
progenitor(marge,maggie).
progenitor(kang,maggie).

conyuge(homero,marge).
conyuge(abraham,mona).
conyuge(jacqueline,clancy).

abuelo(X,Y):- progenitor(X,Z) , progenitor(Z,Y), hombre(X).
abuela(X,Y):- progenitor(X,Z) , progenitor(Z,Y), mujer(X).

hermano(X,Y):- progenitor(Z,X), progenitor(Z,Y),
				progenitor(W,X), progenitor(W,Y), hombre(X),
				X \== Y.
hermana(X,Y):- progenitor(Z,X), progenitor(Z,Y),
				progenitor(W,X), progenitor(W,Y), mujer(X),
				X \== Y.

tio(X,Y):- progenitor(Z,Y), hermano(Z,X).
tia(X,Y):- progenitor(Z,Y), hermana(Z,X).

cuñado(X,Y):- ((conyuge(X,Z), progenitor(W,Z), progenitor(W,Y), hombre(X));
			(conyuge(Y,Z), (hermano(Z,X); hermana(Z,X)), hombre(X))),
			X \== Y, X \== Z, X \== W, Y \== Z, Y \== W, Z \== W.

cuñada(X,Y):- ((conyuge(X,Z), progenitor(W,Z), progenitor(W,Y), mujer(X));
			(conyuge(Y,Z), (hermano(Z,X); hermana(Z,X)), mujer(X))),
			X \== Y, X \== Z, X \== W, Y \== Z, Y \== W, Z \== W.

mediohermana(X,Y):- progenitor(Z,X), progenitor(Z,Y),
					(progenitor(W,Y), \+ progenitor(W,X);
					progenitor(V,Y), \+ progenitor(V,X)),
					mujer(X).