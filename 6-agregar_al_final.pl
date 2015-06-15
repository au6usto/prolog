agregarElementoAlFinal([],X,[X]).
agregarElementoAlFinal([H|T],X,[H|L]):-agregarElementoAlFinal(T,X,L).