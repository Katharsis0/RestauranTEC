% Establecimiento de la base de datos que consultará al Sistema Experto.

%                   ______________________________________________________________________________
%__________________/ Restaurantes

% forma --> restaurante(['nombre de restaurante', tipoComida, [provincia,direccion], capacidad, [disposiciones]])

restaurante(['Bella Italia',italiana,['San Jose','Centro Comercial Paco, Escazu 10201'], 20, ['Disposiciones del Rest. : No se permiten mascotas. La vestimenta es formal.']]).

restaurante(['Italianisimo',italiana,['Alajuela', 'Barrio San Antonio, Ciudad Quesada 21001'], 20, ['Disposiciones del Rest. : Utilizar mascarilla.']]).

restaurante(['Monchis', rapida, ['Cartago', '100 mts sur de la entrada principal de los tribunales de justicia, Cartago 30102.'], 20, ['Disposiciones: Ambiente Pet-Friendly.']]).

restaurante(['La Casita Frita', rapida, ['Cartago', 'C. 13, Cartago 30101'], 20, ['Disposiciones del Rest. : Solo se permite pedir para llevar.']]).

restaurante(['Wongs', asiatica,['San Jose','Av. Central, El Carmen 10101'], 20, ['Disposiciones del Rest. : Solo contamos con palillos, no ofrecemos cubiertos.']]).

restaurante(['El Pub', bocas, ['Cartago','Carretera A Paraíso, Cartago 30109'], 20, ['Disposiciones del Rest. : Solo se permite el ingreso de mayores de edad.']]).

restaurante(['La Fabbrica', italiana, ['Heredia', 'Paseo de Las Flores, Heredia 40801'], 20, ['Disposiciones del Rest. : Se recomienda reservar con antelación.']]).

restaurante(['Tacopedia', mexicana, ['San José', 'Calle 114, Rancho Luna, San José 10108'], 20, ['Disposiciones del Rest: Venga con hambre.']]).

restaurante(['Las Catrinas', mexicana, ['Heredia', 'Calle Carolina, Miraflores, San Joaquín 40601'], 20, ['Disposiciones del Rest: Jueves de Chilaquiles']]).

restaurante(['Espacio Picante', asiatica, ['Heredia', '150 m este de la Soda Lali, Av. 2, Heredia 40802'], 20, ['Disposiciones del Rest: Advertimos que usamos los mejores y más picantes chiles del mercado.']]).

%rellenar con las demas


%                   ______________________________________________________________________________
%__________________/ Menú de cada restaurante

% forma --> menu([platillo, restaurante, ['Sabores']]).
%se agrega el singular y el plural para que sean reconocidos

menu(hamburguesa, 'La Casita Frita', [sencilla, doble, 'con tocineta']). %Nota: los atomos pueden ser frases pero deben ir entre comillas

menu('papas fritas', 'La Casita Frita', [regulares, 'con queso', 'con salsa/s', cargadas]).

menu('pollo frito', 'La Casita Frita', [entero, popcorn, tenders]).

menu(hamburguesa, 'Monchis', ['tex mex', clasica, super-monchis]). %Los sinonimos se pueden reconocer en la funcion de lectura

menu('papas fritas', 'Monchis', ['de la casa', arregladas, clasicas]).

menu(fresco, 'Monchis', ['agua de jamaica', gaseosas, 'limonada con hierbabuena']).

menu(pizza, 'Italianisimo', [pepperonni, 'cuatro quesos', suprema, 'jamon y queso', margarita]).

menu(pasta, 'Italianisimo', [spaghetti, fettuccine, raviolis]).

menu(risotto, 'Bella Italia', ['con hongos', 'con mariscos', 'con esparragos']).

menu(antipasti, 'Bella Italia', [quesos, bruschettas, carpaccio, focaccia]).

menu(postre, 'Bella Italia', [tiramisu, cannoli, gelato]).

menu(pizza, 'La Fabbrica', [artesanal, delgada, 'al pesto']).

%rellenar con los demas





%                   ______________________________________________________________________________
%__________________/ Funciones de Utilidad

%Funcion que verifica si un elemento pertenece a una lista 
pertenece(X, [X|_]).
pertenece(X, [_|R]):-pertenece(X,R).


%funcion que obtiene una lista con el tipo de comida de cada restaurante disponible
listaTiposComida(L) :- 
    findall(X, restaurante([_, X, _, _, _]), TiposSinRepetir), 
    list_to_set(TiposSinRepetir, L).

%funcion que obtiene una lista con el nombre de cada rest disponible
listaRestaurantes(L) :- findall(X, restaurante([X|_]), L).

%funcion que obtiene una lista con el sabor de comida disponible
listaSaborComida(L) :- findall(X, menu([_, _, X]), L).

%funcion que obtiene una lista con las disposiciones de cada rest
listaDisposiciones(L):- findall(X, restaurante([_, _, _, _, X]), L).

%funcion que obtiene una lista con las disposiciones de cada rest
listaCapacidades(L):- findall(X, restaurante([_, _, _, X, _]), L).

