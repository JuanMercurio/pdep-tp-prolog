% Aqui la solucion:

% intencionDeVotoEn(Provincia, Partido, Porcentaje)
intencionDeVotoEn(buenosAires, rojo, 40).
intencionDeVotoEn(buenosAires, azul, 30).
intencionDeVotoEn(buenosAires, amarillo, 30).
intencionDeVotoEn(chaco, rojo, 50).
intencionDeVotoEn(chaco, azul, 20).
intencionDeVotoEn(chaco, amarillo, 0).
intencionDeVotoEn(tierraDelFuego, rojo, 40).
intencionDeVotoEn(tierraDelFuego, azul, 20).
intencionDeVotoEn(tierraDelFuego, amarillo, 10).
intencionDeVotoEn(sanLuis, rojo, 50).
intencionDeVotoEn(sanLuis, azul, 20).
intencionDeVotoEn(sanLuis, amarillo, 0).        
intencionDeVotoEn(neuquen, rojo, 80).
intencionDeVotoEn(neuquen, azul, 10).
intencionDeVotoEn(neuquen, amarillo, 0).
intencionDeVotoEn(santaFe, rojo, 20).
intencionDeVotoEn(santaFe, azul, 40).
intencionDeVotoEn(santaFe, amarillo, 40).
intencionDeVotoEn(cordoba, rojo, 10).
intencionDeVotoEn(cordoba, azul, 60).
intencionDeVotoEn(cordoba, amarillo, 20).
intencionDeVotoEn(chubut, rojo, 15).
intencionDeVotoEn(chubut, azul, 15).
intencionDeVotoEn(chubut, amarillo, 15).
intencionDeVotoEn(formosa, rojo, 0).
intencionDeVotoEn(formosa, azul, 0).
intencionDeVotoEn(formosa, amarillo, 0).
intencionDeVotoEn(tucuman, rojo, 40).
intencionDeVotoEn(tucuman, azul, 40).
intencionDeVotoEn(tucuman, amarillo, 20).
intencionDeVotoEn(salta, rojo, 30).
intencionDeVotoEn(salta, azul, 60).
intencionDeVotoEn(salta, amarillo, 10).
intencionDeVotoEn(santaCruz, rojo, 10).
intencionDeVotoEn(santaCruz, azul, 20).
intencionDeVotoEn(santaCruz, amarillo, 30).
intencionDeVotoEn(laPampa, rojo, 25).
intencionDeVotoEn(laPampa, azul, 25).
intencionDeVotoEn(laPampa, amarillo, 40).
intencionDeVotoEn(corrientes, rojo, 30).
intencionDeVotoEn(corrientes, azul, 30).
intencionDeVotoEn(corrientes, amarillo, 10).
intencionDeVotoEn(misiones, rojo, 90).
intencionDeVotoEn(misiones, azul, 0).
intencionDeVotoEn(misiones, amarillo, 0).

% candidato(Candidato, Partido)
candidato(frank, rojo).
candidato(claire, rojo).
candidato(garrett, azul).
candidato(jackie, amarillo).
candidato(linda, azul).
candidato(catherine, rojo).
candidato(seth, amarillo).
candidato(heather, amarillo).

% promesa(Candidato, Promesa).
promesa(garrett, inflacion(18)).
promesa(garrett, construir([escuela, universidad, hospital, ruta])).
promesa(garrett, construir([casas, autopistas])).
promesa(seth, inflacion(10)).
promesa(claire, inflacion(4)).
promesa(claire, trabajo(200000)).
promesa(claire, inflacion(14)).
promesa(claire, trabajo(520000)).
promesa(claire, trabajo(1000000)).
promesa(frank, inflacion(3)).
promesa(frank, construir([hospital, universidad])).
promesa(frank, inflacion(13)).
promesa(frank, trabajo(10000)).
promesa(frank, construir([plazas, autompistas, extensionSubte, pavimentacion])).

% leDebeFavor(CandidatoEnDeuda, CandidatoBeneficiado).
leDebeFavor(frank, claire).
leDebeFavor(frank, linda).
leDebeFavor(claire, catherine).
leDebeFavor(claire, seth).
leDebeFavor(catherine, jackie).
leDebeFavor(jackie, garrett).
leDebeFavor(jackie, heather).
leDebeFavor(seth, heather).

% edad(Persona, Edad)
edad(heather, 50).
edad(catherine, 59).
edad(linda, 30).
edad(jackie, 36).
edad(frank, 50).
edad(claire, 52).
edad(garret, 64).
edad(peter, 26).

% sePostula(Partido, Provincia)
sePostula(azul, buenosAires).
sePostula(azul, chaco).
sePostula(azul, tierraDelFuego).
sePostula(azul, sanLuis).
sePostula(azul, neuquen).
sePostula(rojo, buenosAires).
sePostula(rojo, sanLuis).
sePostula(rojo, tierraDelFuego).
sePostula(rojo, chubut).
sePostula(rojo, cordoba).
sePostula(rojo, santaFe).
sePostula(amarillo, buenosAires).
sePostula(amarillo, salta).
sePostula(amarillo, santaCruz).
sePostula(amarillo, laPampa).
sePostula(amarillo, corrientes).
sePostula(amarillo, misiones).
sePostula(amarillo, tucuman).
sePostula(amarillo, chaco).
sePostula(amarillo, formosa).

% poblacion(Provincia, Habitantes)
poblacion(buenosAires, 15355000).
poblacion(chaco, 1143201).
poblacion(tierraDelFuego, 160720).
poblacion(sanLuis, 489255).
poblacion(sanLuis, 489255).
poblacion(neuquen, 637913).
poblacion(santaFe, 3397532).
poblacion(cordoba, 3567654).
poblacion(chubut, 577466).
poblacion(formosa, 527895).
poblacion(tucuman, 1687305).
poblacion(salta, 1333365).
poblacion(santaCruz, 273964).
poblacion(laPampa, 349299).
poblacion(corrientes, 992595).
poblacion(misiones, 1189446).


% PUNTO 2
esPicante(Provincia) :-
    poblacionMayorA(1000000, Provincia),
    sePostulaMasDeUnpartido(Provincia).

sePostulaMasDeUnpartido(Provincia):-
    sePostula(Partido, Provincia), 
    sePostula(OtroPartido, Provincia),
    Partido \= OtroPartido.

poblacionMayorA(Num, Provincia) :-
    poblacion(Provincia, Habitantes),
    Habitantes > Num.


% PUNTO 3
leGanaA(Candidato1, Candidato2, Provincia):-
    compite(Candidato1, Partido, Provincia),
    candidato(Candidato2, OtroPartido),
    partidoPostulanteLeGanaA(Partido,OtroPartido,Provincia). 

partidoPostulanteLeGanaA(_,OtroPartido,Provincia):-
    not(sePostula(OtroPartido, Provincia)).

partidoPostulanteLeGanaA(Partido,Partido,_).

partidoPostulanteLeGanaA(Partido,OtroPartido,Provincia):-
    tieneMayorCantidadDeVotos(Partido,OtroPartido, Provincia).

tieneMayorCantidadDeVotos(Partido1, Partido2, Provincia) :-
    intencionDeVotoEn(Provincia, Partido1, PorcentajePartido1),
    intencionDeVotoEn(Provincia, Partido2, PorcentajePartido2),
    PorcentajePartido1 > PorcentajePartido2.


compite(Candidato, Partido, Provincia) :-
    candidato(Candidato, Partido),
    sePostula(Partido, Provincia).



% PUNTO 4   
 elGranCandidato(Candidato) :-
        candidato(Candidato, Partido),
        candidatoMasJoven(Candidato, Partido),
        ganaTodasDondeCompite(Candidato, Partido).

candidatoMasJoven(Candidato, Partido) :-
        forall(candidato(OtroCandidato, Partido), esMasJoven(Candidato, OtroCandidato)).
    
ganaTodasDondeCompite(Candidato,Partido) :- 
        forall(compite(Candidato, Partido, Provincia), ganaProvincia(Candidato, Provincia)).

ganaProvincia(Partido, Provincia) :-
        forall(sePostula(OtroPartido, Provincia), partidoPostulanteLeGanaA(Partido,OtroPartido,Provincia)).                
        
esMasJoven(Candidato, OtroCandidato) :-
        edad(Candidato, Edad1), 
        edad(OtroCandidato, Edad2),
        Edad2 >= Edad1.
    
 

% PUNTO 5
ajusteConsultora(Partido, Provincia, PorcentajeReal) :-
    intencionDeVotoEn(Provincia, Partido, Porcentaje),
    ganaProvinciaPartido(Partido, Provincia),
    PorcentajeReal is Porcentaje - 20.

ajusteConsultora(Partido, Provincia, PorcentajeReal) :-
    intencionDeVotoEn(Provincia, Partido, Porcentaje),
    not(ganaProvinciaPartido(Partido, Provincia)),
    PorcentajeReal is Porcentaje + 5.

ganaProvinciaPartido(Partido, Provincia) :-
    ganaProvincia(Partido, Provincia).


% PUNTO 7

candidatoSerio(Candidato) :-
    candidato(Candidato, _),
    tieneAlMenos3PromesasRealizables(Candidato).

tieneAlMenos3PromesasRealizables(Candidato) :-
    listaPromesasRealizables(Candidato, Promesas),
    length(Promesas, Cantidad),
    Cantidad >= 3.

listaPromesasRealizables(Candidato, Promesas) :-
    findall(Promesa, promesaRealizable(Candidato, Promesa), Promesas).

promesaRealizable(Candidato, Promesa) :-
    promesa(Candidato, Promesa),
    puedeCumplir(Candidato, Promesa).

puedeCumplir(Candidato, construir(Construcciones)) :-
    promesa(Candidato, construir(Construcciones)),
    noConstruye(universidad, Construcciones),
    construyeMenosDe(3,Construcciones).

puedeCumplir(Candidato, trabajo(Cant)) :-
    edad(Candidato, Edad),
    Edad * 10000 >= Cant.

puedeCumplir(_, inflacion(Cant)) :-
    Cant >= 10.

construyeMenosDe(Num, Construcciones) :-
    length(Construcciones, Cant),
    Cant < Num.

noConstruye(Lugar, Construcciones) :-
    not(member(Lugar, Construcciones)).



% PUNTO 8 
convieneQueGane(Ganador, Ganador).

convieneQueGane(Ganador, Candidato) :-
    leDebeFavor(Ganador, Candidato).

convieneQueGane(Ganador, Candidato):-
    leDebeFavor(Alguien, Candidato),
    convieneQueGane(Ganador, Alguien),
    Ganador \= Alguien. 

estaArregladoPara(Candidato) :-
    candidato(Candidato, _),
    aTodosLosConvieneQueGane(Candidato).    
    
aTodosLosConvieneQueGane(Candidato):-    
    forall(candidato(OtroCandidato, _), convieneQueGane(Candidato, OtroCandidato)).

% PUNTO 9
favorito(Candidato) :-
    candidato(Candidato, _),
    tieneMasPuntosQueTodos(Candidato).

tieneMasPuntosQueTodos(Candidato) :-
    forall(candidato(OtroCandidato,_), tieneMasPuntos(Candidato, OtroCandidato)).

tieneMasPuntos(Candidato, OtroCandidato) :-
    puntosFinal(Candidato, PuntosCandidato),
    puntosFinal(OtroCandidato, PuntosOtroCandidato),
    PuntosCandidato >= PuntosOtroCandidato.

puntosFinal(Candidato, PuntosFinal) :-
    findall(Puntos, puntos(Candidato, Puntos), PuntosLista),
    sumlist(PuntosLista, PuntosFinal).

puntos(Candidato, 5) :-
    promesa(Candidato, inflacion(Num)),
    10 =< Num, 
    Num =< 18.

puntos(Candidato, -3) :-
    promesa(Candidato, inflacion(Num)),
    Num > 18,
    Num < 10.

puntos(Candidato, Puntos) :-
    promesa(Candidato, construir(Construcciones)),
    length(Construcciones, Puntos),
    noConstruye(pavimentacion, Construcciones).

puntos(Candidato, Puntos) :-
    promesa(Candidato, construir(Construcciones)),
    length(Construcciones, Cant),
    not(noConstruye(pavimentacion, Construcciones)),
    Puntos is Cant - 3.

puntos(Candidato, 1):-
    promesa(Candidato, trabajo(_)).


/* PUNTO 10
 
  Es necesario agregar:
        promera(seth, pobreza(0, 10))
        promera(heather, pobreza(2, 2))

    Se podria haber modelado de otra forma las promesas, por ejemplo: 
        -promesas(frank, [listado de promesas])
    
    Habria que analizar cuando estas promesas son posibles de 
    cumplir y agregarlas a puedeCumplir()
    
*/






    















