cambioPesosAUsd(Pesos,Usd):- Usd is Pesos * 12.67.
cambioUsdAPesos(Usd,Pesos):- Pesos is Usd * 0.0789.

primode(X,Y):- padrede(Z,Y), hermanode(Z,W), hijode(X,W).
sobrinode(X,Y):- hermanode(Y,Z), hijode(X,Z).