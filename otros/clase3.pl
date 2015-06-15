longitud([],0).
longitud([H|T],N):- longitud(T,N0), N is N0+1.