% Establecimiento de la gramática BNF que regirá al Sistema Experto.

%%                   ______________________________________________________________________________
%__________________/ Oración Válida

validacion(O):-oracion(O,[]),!.%falta parsear input

validacion(O):-nl,writeln("Error: Gramática incorrecta. Consulte el manual si tiene duda."),nl,writeln("Ingrese de nuevo su oración."),nl,validacion(O).


% O = sintag. nominal + sintag. verbal
oracion(A,B):-sintagmaNominal(A,X), sintagmaVerbal(X,B).


%s.n.: determinante + sustantivo => unas papas
%s.n.: sustantivo => yo
 
% O = sintag. verbal + sintag. nominal 
oracion(A,B):-sintagmaVerbal(A,X), sintagmaNominal(X,B).

% O = sintag. nominal + sintag. verbal + sintag. nominal 
oracion(A,B):-sintagmaNominal(A,X), sintagmaVerbal(X,Y), sintagmaNominal(Y,B).

%                   ______________________________________________________________________________
%__________________/ Sintagma Nominal

sintagmaNominal(A,B):-sustantivo(A,B).

sintagmaNominal(A,B):-determinante(A,X),sustantivo(X,B).

%                   ______________________________________________________________________________
%__________________/ Sustantivos

sustantivo(A,B):- nucleo(A,B).

sustantivo(A,B):- nucleo(A,X), adjetivo(X,B).

%nucleos: comida, empanada(s), pollo(s), pizza(s), taco(s), etc.
nucleo([comida|O],O).
nucleo([empanada|O],O).
nucleo([empanadas|O],O).
nucleo([pollo|O],O).
nucleo([pollos|O],O).
nucleo([pizza|O],O).
nucleo([pizzas|O],O).
nucleo([taco|O],O).
nucleo([tacos|O],O).

%pronombres
nucleo([yo|O],O).
nucleo(["Yo"|O],O).
nucleo([nosotros|O],O).
nucleo(["Nosotros"|O],O).
nucleo([nosotras|O],O).
nucleo(["Nosotras"|O],O).

%nombres propios
nucleo(["Sebastian"|O],O).
nucleo(["Estefanny"|O],O).
nucleo(["Valeria"|O],O).
nucleo(["Julio"|O],O).

%provincias
nucleo(["Cartago"|O],O).
nucleo(["San Jose"|O],O).
nucleo(["Heredia"|O],O).
nucleo(["Alajuela"|O],O).
nucleo(["Puntarenas"|O],O).
nucleo(["Limon"|O],O).
nucleo(["Guanacaste"|O],O).


%                   ______________________________________________________________________________
%__________________/ Adjetivos
adjetivo([fritos|O],O).
adjetivo([frita|O],O).
adjetivo([fritas|O],O).
adjetivo([rapida|O],O).
adjetivo([asiatica|O],O).
adjetivo([mexicana|O],O).
adjetivo([italianas|O],O).
adjetivo([bocas|O],O).



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
verbo([quiero|O],O).
verbo([quiere|O],O).
verbo([quisieramos|O],O).
verbo([deseamos|O],O).
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









