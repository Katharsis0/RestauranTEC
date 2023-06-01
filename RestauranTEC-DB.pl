% Establecimiento de la base de datos que consultará al Sistema Experto.

%                   ______________________________________________________________________________
%__________________/ Restaurantes

% forma --> restaurante(['nombre de restaurante', tipoComida, [provincia,direccion], capacidad, [disposiciones]])

restaurante(['Bella Italia',italiana,['San Jose','Centro Comercial Paco, Escazu 10201'], 20, ['Disposiciones del Rest. : No se permiten mascotas. La vestimenta es formal.']]).

restaurante(['Monchis', rapida, ['Cartago', '100 mts sur de la entrada principal de los tribunales de justicia, Cartago 30102.'], 20, ['Disposiciones: Ambiente Pet-Friendly.']]).

restaurante(['La Casita Frita', rapida, ['Cartago', 'C. 13, Cartago 30101'], 20, ['Disposiciones del Rest. : Solo se permite pedir para llevar.']]).

restaurante(['Wongs', asiatica,['San Jose','Av. Central, El Carmen 10101'], 20, ['Disposiciones del Rest. : Solo contamos con palillos, no ofrecemos cubiertos.']]).

restaurante(['El Pub', bocas, ['Cartago','Carretera A Paraíso, Cartago 30109'], 20, ['Disposiciones del Rest. : Solo se permite el ingreso de mayores de edad.']]).

restaurante(['La Fabbrica', italiana, ['Heredia', 'Paseo de Las Flores, Heredia 40801'], 20, ['Disposiciones del Rest. : Se recomienda reservar con antelación.']]).

restaurante(['Las Catrinas', mexicana, ['Heredia', 'Calle Carolina, Miraflores, San Joaquín 40601'], 20, ['Disposiciones del Rest: Jueves de Chilaquiles']]).

restaurante(['Las delicias del Puerto', marisqueria, ['Puntarenas', 'Costado Oeste Del Hotel Tioga Paseo de Los Turistas Barrio El Carmen Puntarenas, Puntarenas 60101 Costa Rica'], 20, ['Disposiciones del Rest: Ambiente familiar con los mejores platillos de nuestras costas.']]).

restaurante(['Caballo Blanco', costarricense, ['Puntarenas', 'Ruta #1 , Km 131 Cruce Miramar 7 Km al norte, Puntarenas Aranjuez Costa Rica'], 20, ['Disposiciones del Rest: Ofrecemos comida Latina, Marisco, Centroamericana, Costarricense y opciones veganas']]).

restaurante(['El Chante Vegano', vegana, ['Alajuela', '25 mtrs Oeste de Oficina De Correos Alajuela Alajuela, 20101'], 20, ['Disposiciones del Rest: Restaurante libre de crueldad animal']]).

%                   ______________________________________________________________________________
%__________________/ Menú de cada restaurante

% forma --> menu([platillo, restaurante, ['Sabores']]).
%se agrega el singular y el plural para que sean reconocidos
menu(risotto, 'Bella Italia', ['con hongos', 'con mariscos', 'con esparragos']).
menu(antipasti, 'Bella Italia', [quesos, bruschettas, carpaccio, focaccia]).
menu(postre, 'Bella Italia', [tiramisu, cannoli, gelato]).
menu(fresco, 'Bella Italia', ['horchata', 'fresco de frutas']).
menu(gaseosa, 'Bella Italia', [sprite, 'coca cola', fanta]).

menu(hamburguesa, 'Monchis', ['tex mex', clasica, 'super monchis']). %Los sinonimos se pueden reconocer en la funcion de lectura
menu(papas , 'Monchis', ['de la casa', arregladas, clasicas]).
menu(burrito, 'Monchis', ['especia del estudiantes', clasico, 'super monchis']).
menu(fresco, 'Monchis', ['refresco natural del dia']).
menu(gaseosa, 'Monchis', ['coca cola']).

menu(hamburguesa, 'La Casita Frita', [sencilla, doble, 'con tocineta']). %Nota: los atomos pueden ser frases pero deben ir entre comillas
menu(papas, 'La Casita Frita', [regulares, 'con queso', 'con salsa/s', cargadas]).
menu(pollo, 'La Casita Frita', [entero, popcorn, tenders]).
menu(fresco, 'La Casita Frita', ['papaya','fresco de frutas', 'te frio']).

menu(ramen, 'Wongs', ['en sopa miso', clasico, 'vegetariano']). %Los sinonimos se pueden reconocer en la funcion de lectura
menu(sushi , 'Wongs', ['dinamita roll', cangrejo, 'vegetariano', 'atun fresco', 'salmon fresco', 'barco de sushi con 80 piezas surtidas']).
menu(almuerzo, 'Wongs', [cantones, 'pollo teritaki de la casa', 'pato en salsa agridulce']).
menu(postre, 'Wongs', [mochi, 'pastel de durazno ', 'galletas de la fortuna']).
menu(fresco, 'Wongs', ['bubba tea', 'te frio']).

menu(hamburguesa, 'El Pub', ['tocineta con miel', clasico, 'vegetariano']). %Los sinonimos se pueden reconocer en la funcion de lectura
menu(papas , 'El Pub', [regulares, 'con queso', 'con salsa/s', cargadas]).
menu(asado, 'El Pub', ['pollo asado', 'carne a la parrilla', 'langosta en mantequilla']).
menu(fresco, 'El Pub', ['te frio']).
menu(cerveza, 'El Pub', [artesanal, punk, nacionales]).
menu(gaseosa, 'El Pub', [sprite, 'coca cola', fanta]).

menu(pizza, 'La Fabbrica', [artesanal, delgada, 'al pesto']).
menu(pizza, 'La Fabbrica', [artesanal, gruesa, 'margarita']).
menu(pizza, 'La Fabbrica', [artesanal, 'extra delgada', 'tocino al vapor']).
menu(pasta, 'La Fabbrica', [spaghetti, fettuccine, raviolis]).
menu(fresco, 'La Fabbrica', [naturales,'limonada con hierbabuena']).

menu(desayuno, 'Catrina', ['huevos rancheros', elote, 'chilaquiles']).
menu(tacos, 'Catrina', ['al pastor', 'de birria', 'de nopal', vegetariano]).
menu(postre, 'Catrina', [churros, 'helado de tamarindo y chile', 'pan de muerto']).
menu(fresco, 'Catrina', [tamarindo, 'aguas frescas']).
menu(gaseosa, 'Catrina', [sprite, 'big cola', fanta]).

menu(desayuno, 'Las delicias del Puerto', ['churchil de frutas', 'gallo pinto', 'gallos de queso']).
menu(almuerzo, 'Las delicias del Puerto', ['casado con la proteina del dia', 'patacones con calamar', 'sopa de pescado', vigoron]).
menu(postre, 'Las delicias del Puerto', [churchill, 'helado de sorbetera', 'copos']).
menu(fresco, 'Las delicias del Puerto', [tamarindo, pipas]).
menu(ceviche, 'Las delicias del Puerto', ['de mango', sencillo, 'supremo con langosta y calamar']).

menu(desayuno, 'Caballo Blanco', ['huevos rancheros', 'gallo pinto', 'gallos de queso']).
menu(almuerzo, 'Caballo Blanco', ['casado con la proteina del dia', 'olla de carne', 'sopa negra']).
menu(postre, 'Caballo Blanco', ['pastel del dia', 'arroz con leche', 'helados de sorbetera']).
menu(fresco, 'Caballo Blanco', [natuales]).

menu(tacos, 'El Chante Vegano', ['de birria con hongos', 'de carne de soja']).
menu(almuerzo, 'El Chante Vegano', ['casado con proteina vegetal', 'ensaladas','tofu de la casa']).
menu(desayuno, 'El Chante Vegano', ['bowl de yogurt de tofu', 'ensalada de frutas']).
menu(fresco, 'El Chante Vegano', ['natuales en agua', 'especialidad cruelty free']).




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

