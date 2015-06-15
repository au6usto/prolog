invertirLista([],[]).
invertirLista([H|T],R):-  invertirLista(T,RevT),  append(RevT,[H],R).