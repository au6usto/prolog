cuenta_elementos([],0).
cuenta_elementos([_|T],N):-cuenta_elementos(T,Tam), N is Tam+1.