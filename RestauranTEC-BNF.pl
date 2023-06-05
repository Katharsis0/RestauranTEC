% Establecimiento de la gramática BNF que regirá al Sistema Experto.

%%                   ______________________________________________________________________________
%__________________/ Oración Válida

validacion(O):-oracion(O,[]).%falta parsear input

% O = sintag. nominal + sintag. verbal
oracion(A,B):-sintagmaNominal(A,X), sintagmaVerbal(X,B).

%s.n.: determinante + sustantivo => unas papas
%s.n.: sustantivo => yo
 
% O = sintag. verbal + sintag. nominal 
oracion(A,B):-sintagmaVerbal(A,X), sintagmaNominal(X,B).

% O = sintag. nominal + sintag. verbal + sintag. nominal 
oracion(A,B):-sintagmaNominal(A,X), sintagmaVerbal(X,Y), sintagmaNominal(Y,B).

%pregunta+sustantivo+verbo+sustantivo
oracion(A,B):-pregunta(A,X), sintagmaNominal(X,Y), sintagmaVerbal(Y,Z), sintagmaNominal(Z,B).

%pregunta+sustantivo+verbo+
oracion(A,B):-pregunta(A,X), sintagmaNominal(X,Y), sintagmaVerbal(Y,B).

%pregunta+verbo+sustantivo
oracion(A,B):-pregunta(A,X), sintagmaVerbal(X,Y), sintagmaNominal(Y,B).


%pregunta + nominal + preposicion + nominal
oracion(A,B):-pregunta(A,X), sintagmaNominal(Y,Z), preposicion(Z,W),sintagmaNominal(W,B).

%                   ______________________________________________________________________________
%__________________/ Sintagma Nominal

sintagmaNominal(A,B):-sustantivo(A,B).

sintagmaNominal(A,B):-determinante(A,X),sustantivo(X,B).

%                   ______________________________________________________________________________
%__________________/ Sustantivos

sustantivo(A,B):- nucleo(A,B).

sustantivo(A,B):- nucleo(A,X), adjetivo(X,B).

sustantivo(A,B):- nucleo(A,X), preposicion(X,Y), nucleo(Y,B).


%nucleos: comida, empanada(s), pollo(s), pizza(s), taco(s), etc.
nucleo([comida|O],O).
nucleo([pollo|O],O).
nucleo([pollos|O],O).
nucleo([pizza|O],O).
nucleo([pizzas|O],O).
nucleo([taco|O],O).
nucleo([tacos|O],O).
nucleo([gaseosa|O],O).
nucleo([recomendacion|O],O).
nucleo([risotto|O],O).
nucleo([antipasti|O],O).
nucleo([postre|O],O).
nucleo([fresco|O],O).
nucleo([papas|O],O).
nucleo([burrito|O],O).
nucleo([ramen|O],O).
nucleo([almuerzo|O],O).
nucleo([postre|O],O).
nucleo([asado|O],O).
nucleo([cerveza|O],O).
nucleo([pasta|O],O).
nucleo([hamburguesa|O],O).
nucleo([sushi|O],O).
nucleo([desayuno|O],O).
nucleo([ceviche|O],O).
nucleo([postre|O],O).
nucleo([sopa|O],O).
nucleo([restaurantes|O],O).
nucleo([direccion|O],O).
nucleo([direccion, de|O],O).
nucleo([platillos|O],O).
nucleo([platos|O],O).
nucleo([menu|O],O).
nucleo([sabores, de|O],O).


%preguntas varias
nucleo([mente|O],O).



%pronombres
nucleo([yo|O],O).
nucleo(['Yo'|O],O).
nucleo([nosotros|O],O).
nucleo(['Nosotros'|O],O).
nucleo([nosotras|O],O).
nucleo(['Nosotras'|O],O).

%nombres propios
nucleo(['Sebastian'|O],O).
nucleo(['Estefanny'|O],O).
nucleo(['Valeria'|O],O).
nucleo(['Julio'|O],O).
nucleo(['Marco'|O],O).
nucleo(['El Chante Vegano'|O],O).
nucleo(['El', 'Chante', 'Vegano'|O],O).
nucleo(['Bella Italia'|O], O).
nucleo(['Monchis'|O], O).
nucleo(['Bella', 'Italia'|O], O).

nucleo(['La Casita Frita'|O], O).
nucleo(['La', 'Casita', 'Frita'|O], O).
nucleo(['Wongs'|O], O).
nucleo(['El Pub'|O], O).
nucleo(['El', 'Pub'|O], O).

nucleo(['La Fabbrica'|O], O).
nucleo(['La', 'Fabbrica'|O], O).

nucleo(['Catrinas'|O], O).
nucleo(['El Puerto'|O], O).
nucleo(['El', 'Puerto'|O], O).
nucleo(['Caballo Blanco'|O], O).
nucleo(['Caballo', 'Blanco'|O], O).
nucleo(['Rosti'|O], O).
nucleo(['Bocadito del Cielo'|O], O).
nucleo(['Bocadito', 'del', 'Cielo'|O], O).

nucleo(['La Posada'|O], O).
nucleo(['La', 'Posada'|O], O).
nucleo(['Mi Tierra'|O], O).
nucleo(['Mi', 'Tierra'|O], O).
nucleo(['Las Noches'|O], O).
nucleo(['Las', 'Noches'|O], O).
nucleo(['Sapore Trattoria'|O], O).
nucleo(['Sapore', 'Trattoria'|O], O).
nucleo(['Okami Sushi'|O], O).
nucleo(['Okami', 'Sushi'|O], O).
nucleo(['Tico Burguesas'|O], O).
nucleo(['Tico', 'Burguesas'|O], O).
nucleo(['La Parrillita de Pepe'|O], O).
nucleo(['La Parrillita', 'de', 'Pepe'|O], O).
nucleo(['Nonnos Pizzeria'|O], O).
nucleo(['Nonnos', 'Pizzeria'|O], O).


%provincias
nucleo(['Cartago'|O],O).
nucleo(['San Jose'|O],O).
nucleo(['Heredia'|O],O).
nucleo(['Alajuela'|O],O).
nucleo(['Puntarenas'|O],O).
nucleo(['Limon'|O],O).
nucleo(['Guanacaste'|O],O).

%concatenacion de nucleos
% nucleo([X|O], O) :-
%     nucleo(X, []).
  
%   nucleo([X|Xs], O) :-
%     nucleo(X, Acc1),
%     nucleo(Xs, Acc2),
%     append(Acc1, Acc2, O).


%                   ______________________________________________________________________________
%__________________/ Adjetivos
adjetivo([fritos|O],O).
adjetivo([frita|O],O).
adjetivo([fritas|O],O).
adjetivo([rapida|O],O).
adjetivo([asiatica|O],O).
adjetivo([mexicana|O],O).
adjetivo([italiana|O],O).
adjetivo([bocas|O],O).
adjetivo([vegana|O],O).
adjetivo([mariscos|O],O).
adjetivo([costarricense|O],O).
%                   ______________________________________________________________________________
%__________________/ Preguntas
pregunta([cual|O],O).
pregunta([cual, es|O],O).
pregunta(['Cual'|O],O).
pregunta(['Cual',es|O],O).
pregunta([que|O],O).
pregunta(['Que'|O],O).
pregunta([cual|O],O).
pregunta(['Cuales'|O],O).
pregunta([donde|O],O).
pregunta(['Donde'|O],O).
pregunta([donde,queda|O],O).
pregunta(['Donde',queda|O],O).


%cual es el menu de Wongs

%pregunta + verbo + sustantivo + preposicion + sustantivo
%pregunta + verbal + nominal + preposicion + nominal




%                   ______________________________________________________________________________
%__________________/ Determinantes

determinante([el|O],O). %[determinante|O] vincula el determinante con la lista de palabras restantes de la oracion O.

determinante([lo|O],O).

determinante([los|O],O).

determinante([la|O],O).

determinante([las|O],O).

determinante([un|O],O).

determinante([unos|O],O).

determinante([una|O],O). 

determinante([unas|O],O).

%                   ______________________________________________________________________________
%__________________/ Sintagma Verbal

sintagmaVerbal(A,B):-verbo(A,B).

sintagmaVerbal(A,B):-verbo(A,X), preposicion(X,B).

%verbos
verbo([queremos|O],O).
verbo(['Queremos'|O],O).
verbo([quiero|O],O).
verbo(['Quiero'|O],O).
verbo([quiere|O],O).
verbo(['Quiere'|O],O).
verbo([quisieramos|O],O).
verbo(['Quisieramos'|O],O).
verbo([deseamos|O],O).
verbo(['Deseamos'|O],O).
verbo(['Deseo'|O],O).
verbo([deseo|O],O).
verbo([deseariamos|O],O).
verbo([beber|O],O).
verbo([tomar|O],O).
verbo([comer|O],O).
verbo([desayunar|O],O).
verbo([cenar|O],O).
verbo([almorzar|O],O).
verbo([comer|O],O).
verbo([estoy|O],O).
verbo([estamos|O],O).
verbo([vamos|O],O).
verbo([somos|O],O).
verbo([seriamos|O],O).
verbo([soy|O],O).
verbo([puedo|O],O).
verbo([conseguir|O],O).
verbo([tiene|O],O).
verbo([hay|O],O).
verbo([existe|O],O).
verbo([ver|O],O).
verbo([saber|O],O).
verbo([encuentra|O],O).
verbo([se|O],O).
verbo([son|O],O).
verbo([queda|O],O).
verbo([ubicado|O],O).
verbo([tengo, algo|O],O).








% verbo([quiere, comer|O],O).
% verbo([quiero, comer|O],O).





%Caso concatenacion de 2 verbos. p.e: queremos comer
verbo([X|O], O) :-
    verbo(X, []).
  
  verbo([X|Xs], O) :-
    verbo(X, Acc1),
    verbo(Xs, Acc2),
    append(Acc1, Acc2, O).

%preposiciones
preposicion([a|O],O).
preposicion([de|O],O).
preposicion([entre|O],O).
preposicion([por|O],O).
preposicion([cerca|O],O).
preposicion([en|O],O).

%Caso concatenacion de 2 preposiciones. p.e: cerca de
preposicion([X|O], O) :- preposicion(X, []).
preposicion(X, []).


preposicion([X|Xs], O) :-
  preposicion(X, Acc1),
  preposicion(Xs, Acc2),
  append(Acc1, Acc2, O).


