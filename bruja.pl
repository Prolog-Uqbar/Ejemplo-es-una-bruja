tieneNarizDeBruja(ana).

tieneVerruga(ana).
tieneVerruga(susana).

tieneSombrero(ana).
tieneSombrero(elZorro).

convirtio(ana,flaco,grillo).
convirtio(harry,luna,globo).

peso(ana,60).
peso(ganso,60).
peso(elefante,20000).
peso(mesa,60).


%% Si alguien tiene Verruga entonces ese mismo parece una bruja
%% Alguien tieneVerruga entonces alguien pareceUnaBruja
pareceUnaBruja(Alguien) :- tieneVerruga(Alguien).
pareceUnaBruja(Alguien) :- tieneNarizDeBruja(Alguien), tieneSombrero(Alguien).

esUnaBruja(Sospechoso):-pareceUnaBruja(Sospechoso).
esUnaBruja(X):-convirtio(X,_,_).
esUnaBruja(Persona):-esDeMadera(Persona).
esDeMadera(Persona):-flota(Persona).
flota(Persona):-pesaLoMismoQue(ganso,Persona).

pesaLoMismoQue(UnaCosa,OtraCosa):-
    peso(UnaCosa, Peso),
    peso(OtraCosa,Peso).



