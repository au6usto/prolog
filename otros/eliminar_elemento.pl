eliminarElemento(X,[H|T],T).
eliminarElemento(X,[H|T],[H|T1]):- eliminarElemento(X,T,T1).