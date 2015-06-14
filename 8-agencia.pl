% Base del conocimiento
auto(datos(baja,fiat,uno,2010,negro,precio(60000))).
auto(datos(baja,renault,clio,2011,gris,precio(70000))).
auto(datos(alta,volwagen,bora,2011,blanco,precio(160000))).
auto(datos(alta,bmw,370,2011,blanco,precio(260000))).
auto(datos(alta,mercedez,220,2012,gris,precio(280000))).

listaPorGama(Gama,X):- findall((Marca,Modelo,Año,Importe),(auto(datos(Gama,Marca,Modelo,Año,_,precio(I))), Importe is I),X).

totalPorGama(Gama,X):- findall(Importe,(auto(datos(Gama,_,_,_,_,precio(Cuesta))), Importe is Cuesta),L), sumarLista(L,X).

sumarLista([],0).
sumarLista([H|T],Total):- sumarLista(T,SubT), Total is H + SubT.