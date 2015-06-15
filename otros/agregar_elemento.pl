%agregarElemento(X,[],[X]):-!.
%agregarElemento(X,[H|T],[X,H|T]):-!.
agregarElementoFinal(X,[H|T],L):- append([H|T],[X],L).