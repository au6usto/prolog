encontrarElemento(X,[X|_]).
encontrarElemento(X,[_|T]):- encontrarElemento(X,T).