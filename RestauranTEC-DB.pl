% Establecimiento de la base de datos que consultara al Sistema Experto.

%                   ______________________________________________________________________________
%__________________/ Restaurantes

% forma --> restaurante(['nombre de restaurante', tipoComida, [provincia,direccion], capacidad, [disposiciones]])

restaurante(['Bella Italia',italiana,['San Jose','Centro Comercial Paco, Escazu 10201'], 20, ['Disposiciones del Rest. : No se permiten mascotas. La vestimenta es formal.']]).

restaurante(['Monchis', rapida, ['Cartago', '100 mts sur de la entrada principal de los tribunales de justicia, Cartago 30102.'], 20, ['Disposiciones: Ambiente Pet-Friendly.']]).

restaurante(['La Casita Frita', rapida, ['Limon', 'Puerto Limon 70101 Costa Rica'], 20, ['Disposiciones del Rest. : Solo se permite pedir para llevar.']]).

restaurante(['Wongs', asiatica,['San Jose','Av. Central, El Carmen 10101'], 20, ['Disposiciones del Rest. : Solo contamos con palillos, no ofrecemos cubiertos.']]).

restaurante(['El Pub', bocas, ['Cartago','Carretera A Paraiso, Cartago 30109'], 20, ['Disposiciones del Rest. : Solo se permite el ingreso de mayores de edad.']]).

restaurante(['La Fabbrica', italiana, ['Heredia', 'Paseo de Las Flores, Heredia 40801'], 20, ['Disposiciones del Rest. : Se recomienda reservar con antelacion.']]).

restaurante(['Catrinas', mexicana, ['Heredia', 'Calle Carolina, Miraflores, San Joaquin 40601'], 20, ['Disposiciones del Rest: Jueves de Chilaquiles']]).

restaurante(['El Puerto', mariscos, ['Puntarenas', 'Costado Oeste Del Hotel Tioga Paseo de Los Turistas Barrio El Carmen Puntarenas, Puntarenas 60101 Costa Rica'], 20, ['Disposiciones del Rest: Ambiente familiar con los mejores platillos de nuestras costas.']]).

restaurante(['Caballo Blanco', costarricense, ['Puntarenas', 'Ruta #1 , Km 131 Cruce Miramar 7 Km al norte, Puntarenas Aranjuez Costa Rica'], 20, ['Disposiciones del Rest: Ofrecemos comida Latina, Marisco, Centroamericana, Costarricense y opciones veganas']]).

restaurante(['El Chante Vegano', vegana, ['Alajuela', '25 mtrs Oeste de Oficina De Correos Alajuela Alajuela, 20101'], 20, ['Disposiciones del Rest: Restaurante libre de crueldad animal']]).

restaurante(['Rosti', rapida, ['Cartago', '150m Este De Las Ruinas, Contiguo Al Pali, Cartago 30101.'], 20, ['Disposiciones del Rest: Disponemos de un reglamento para algunas de las promociones que ofrecemos.']]).

restaurante(['Bocadito del Cielo', costarricense, ['Cartago', '3kms. NE. Centro Cervantes, 10, Cervantes, Alvarado, Cartago 30602.'], 60, ['Disposiciones del Rest: Restaurante familiar, no se aceptan mascotas.']]).

restaurante(['La Posada', costarricense, ['Cartago', 'Ruta Nacional Primaria 10, Provincia de Cartago, Cervantes, Cartago 30602.'], 50, ['Disposiciones del Rest: Brindamos un menu virtual para que pueda ver nuestras comidas sin necesidad de haber llegado al restaurante.']]).

restaurante(['Mi Tierra', costarricense, ['Guanacaste', 'El Guanacaste, G73J+WP8, Plazuela, Provincia de Guanacaste.'], 20, ['Disposiciones del Rest: Lo mejor de la comida Costarricense!.']]).

restaurante(['Las Noches', mexicana, ['San Jose', 'Calle 40 entre Paseo Colon 50 norte del BCR, San Jose 10108'], 20, ['Disposiciones del Rest: Servimos platillos mexicanos con un toque autentico.']]).

restaurante(['Sapore Trattoria', italiana, ['San Jose', 'Avenida Segunda, 1 Cuadra Al Oeste de la Plaza la Democracia Curridabat, de la POPS 75 al este, Frente al CFIA, San Jose 10108'], 30, ['Disposiciones del Rest: Ofrecemos tambien buenas opciones veganas dentro de nuestro menu.']]).

restaurante(['Okami Sushi', asiatica, ['San Jose', '200 metros sur de Casa Matute, Barrio Lujan, San Jose 10110'], 40, ['Disposiciones del Rest: Abrimos en la mañana y en la noche, con dos horas de cierre entre estos horarios, puede consultarlos en la pagina del restaurante.']]).

restaurante(['Tico Burguesas', rapida, ['San Jose', '1 Calle 9, El Carmen, San Jose, 10101'], 30, ['Disposiciones del Rest: Contamos con un horario de 24 horas.']]).

restaurante(['La Parrillita de Pepe', rapida, ['Heredia', 'Heredia centro, Heredia 40101'], 20, ['Disposiciones del Rest: Opciones de comida colombiana en nuestro menu y el restarurante se mantiene abierto hasta tarde']]).

restaurante(['Nonnos Pizzeria', italiana, ['Heredia', 'Del Banco Nacional 225 Metros Al Este, Heredia 40101'], 30, ['Disposiciones del Rest: Opciones de comida vegana y vegetariana, gran experiencia en hacer pizzas']]).
%                   ______________________________________________________________________________
%__________________/ Menu de cada restaurante

% forma --> menu([platillo, restaurante, ['Sabores']]).
%se agrega el singular y el plural para que sean reconocidos
menu(risotto, 'Bella Italia', ['con hongos', 'con mariscos', 'con esparragos']).
menu(antipasti, 'Bella Italia', [quesos, bruschettas, carpaccio, focaccia]).
menu(postre, 'Bella Italia', [tiramisu, cannoli, gelato]).
menu(fresco, 'Bella Italia', ['horchata', 'fresco de frutas']).
menu(gaseosa, 'Bella Italia', [sprite, 'coca cola', fanta]).
menu(pizza, 'Bella Italia', ['extra queso', 'margarita', 'de la casa', hawaiana]).

menu(hamburguesa, 'Monchis', ['tex mex', clasica, 'super monchis']). %Los sinonimos se pueden reconocer en la funcion de lectura
menu(papas , 'Monchis', ['de la casa', arregladas, clasicas]).
menu(burrito, 'Monchis', ['especial de estudiante', clasico, 'super monchis']).
menu(fresco, 'Monchis', ['natural']).
menu(gaseosa, 'Monchis', ['coca cola, fanta Kolita, Sprite']).

menu(hamburguesa, 'La Casita Frita', [sencilla, doble, 'con tocineta']). %Nota: los atomos pueden ser frases pero deben ir entre comillas
menu(papas, 'La Casita Frita', [regulares, 'con queso', 'con salsas', cargadas]).
menu(pollo, 'La Casita Frita', [entero, popcorn, tenders]).
menu(fresco, 'La Casita Frita', [papaya,'fresco de frutas', 'te frio']).

menu(ramen, 'Wongs', ['en sopa miso', clasico, 'vegetariano']). %Los sinonimos se pueden reconocer en la funcion de lectura
menu(sushi , 'Wongs', ['dinamita roll', cangrejo, 'vegetariano', 'atun fresco', 'salmon fresco', 'barco de sushi con 80 piezas surtidas']).
menu(almuerzo, 'Wongs', [cantones, 'pollo teritaki de la casa', 'pato en salsa agridulce']).
menu(postre, 'Wongs', [mochi, 'pastel de durazno ', 'galletas de la fortuna']).
menu(fresco, 'Wongs', ['bubba tea', 'te frio']).

menu(hamburguesa, 'El Pub', ['tocineta con miel', clasico, 'vegetariano']). %Los sinonimos se pueden reconocer en la funcion de lectura
menu(papas , 'El Pub', [regulares, 'con queso', 'con salsa/s', cargadas]).
menu(almuerzo, 'El Pub', ['pollo asado', 'carne a la parrilla', 'langosta en mantequilla']).
menu(fresco, 'El Pub', ['te frio']).
menu(cerveza, 'El Pub', [artesanal, punk, nacionales]).
menu(gaseosa, 'El Pub', [sprite, 'coca cola', fanta]).

menu(pizza, 'La Fabbrica', ['extra queso', 'margarita', 'al pesto', 'tocino al vapor']).
menu(pasta, 'La Fabbrica', [spaghetti, fettuccine, raviolis]).
menu(fresco, 'La Fabbrica', [naturales,'limonada con hierbabuena']).

menu(desayuno, 'Catrina', ['huevos rancheros', elote, 'chilaquiles']).
menu(tacos, 'Catrina', ['al pastor', 'de birria', 'de nopal', vegetariano]).
menu(postre, 'Catrina', [churros, 'helado de tamarindo y chile', 'pan de muerto']).
menu(fresco, 'Catrina', [tamarindo, 'aguas frescas']).
menu(gaseosa, 'Catrina', [sprite, 'big cola', fanta]).

menu(desayuno, 'El Puerto', ['bowl de frutas', 'gallo pinto', 'gallos de queso']).
menu(almuerzo, 'El Puerto', ['casado', 'patacones con calamar', 'sopa de pescado', vigoron]).
menu(postre, 'El Puerto', [churchill, 'helado de sorbetera', 'copos']).
menu(fresco, 'El Puerto', [tamarindo, pipas]).
menu(ceviche, 'El Puerto', [mango, sencillo, 'supremo con langosta y calamar']).

menu(desayuno, 'Caballo Blanco', ['huevos rancheros', 'gallo pinto', 'gallos de queso']).
menu(almuerzo, 'Caballo Blanco', ['casado con la proteina del dia', 'olla de carne', 'sopa negra']).
menu(postre, 'Caballo Blanco', ['pastel', 'arroz con leche', 'helados de sorbetera']).
menu(fresco, 'Caballo Blanco', [natural]).

menu(tacos, 'El Chante Vegano', ['tipo birria con hongos', 'de carne de soja']).
menu(almuerzo, 'El Chante Vegano', ['casado con proteina vegetal', 'ensaladas','tofu de la casa']).
menu(desayuno, 'El Chante Vegano', ['bowl de yogurt de tofu', 'ensalada de frutas']).
menu(fresco, 'El Chante Vegano', ['naturales en agua', 'especialidad cruelty free']).

menu(pollo, 'Rosti', [fajitas, 'media pechuga deshuesada','cuarto de pollo']).
menu(almuerzo, 'Rosti', ['arroz con pollo', 'sopa azteca','rosti Casado']).
menu(desayuno, 'Rosti', [empanada, 'chalupa huevos rancheros', 'pinto bowl']).
menu(fresco, 'Rosti', ['naturales en agua', 'naturales en leche']).
menu(gaseosa, 'Rosti', [sprite, 'big cola', fanta]).

menu(desayuno, 'Bocadito del Cielo', ['pinto', 'tostadas con carne de soja']).
menu(almuerzo, 'Bocadito del Cielo', ['filet de res en salsa de hongos kallampa', 'trucha en salsa de limon', 'albondigas de pollo en salsa blanca', 'pollo al horno']).
menu(postre, 'Bocadito del Cielo', ['yogurt con chia', 'manzanas asadas', 'piñas asadas', 'pie de limon de la casa']).
menu(fresco, 'Bocadito del Cielo', [tamarindo, soya, cebada, cereza]).

menu(desayuno, 'La Posada', ['gallo pinto con huevo', 'huevos rancheros','omelette jamon y queso','desayuno posada']).
menu(almuerzo, 'La Posada', ['casado completo', 'pechuga de pollo a la parrilla', 'fajitas de pollo a la plancha','lomito encebollado','costilla de cerdo a la parrilla']).
menu(sopa, 'La Posada', ['olla de carne', 'pozol', 'sopa de mondongo', 'sopa de pollo']).
menu(postre, 'La Posada', ['tartaleta de manzana', 'torta de zanahoria','torta chilena', 'cajeta de leche La Posada']).
menu(fresco, 'La Posada', ['naturales', 'fresa con limonada', 'jugo de naranja con zanahoria']).

menu(desayuno, 'Mi Tierra', ['huevos rancheros', 'gallo pinto',omelette,'chorreada con natilla y queso','tortilla de queso con natilla y huevo']).
menu(almuerzo, 'Mi Tierra', ['casado', 'casado vegetariano','arroz con pollo','feria de gallos']).
menu(postre, 'Mi Tierra', ['arroz con leche', 'flan de coco','helados de sorbetera']).
menu(fresco, 'Mi Tierra', ['naturales en leche', 'naturales en agua', 'bebidas calientes: cafe, agua dulce, chocolate caliente']).
menu(gaseosa, 'Catrina', [sprite, 'big cola', fanta]).

menu(tacos, 'Las Noches', ['de birria', 'de alambre con queso', 'de pollo','de chuleta con queso','de chorizo','de carnitas','al pastor']).
menu(almuerzo, 'Las Noches', ['lomito huasteco', 'lomito a la mexicana','fajitas de pollo o res','chilaquiles a la mexicana']).
menu(fresco, 'Las Noches', [naturales, 'ponche de frutas']).
menu(postre, 'Las Noches', ['cheesecake de limon', 'copa de helado','flan de caramelo']).
menu(gaseosa, 'Las Noches', [sprite, 'big cola', fanta, 'coca cola zero']).

menu(pasta, 'Sapore Trattoria', ['spaghetti alla carbonara', 'gnocchi 4 formaggi','tagliatelle alla bolognese','lasagana bolognese']).
menu(pizza, 'Sapore Trattoria', [margherita, amatriciana, boscaiola, diavola, capricciosa]).
menu(postre, 'Sapore Trattoria', ['torta caprese', tiramisu,'semifreddo al torrone', 'cannolo siciliano']).
menu(cerveza, 'Sapore Trattoria', [cortigiana, duchessa, reale,'my antonia']).

menu(sushi, 'Okami Sushi', ['california roll', 'philadelphia roll','sake roll','veggie roll','pollo teriyaki roll', hosomaki]).
menu(ramen, 'Okami Sushi', ['ramen shoyu', 'ramen tonkutso','miso ramen','ramen vegetariano']).
menu(fresco, 'Okami Sushi', ['bubble tea', frutal, 'te negro']).
menu(gaseosa, 'Okami Sushi', [sprite, 'big cola', fanta, 'coca cola zero']).
menu(postre, 'Okami Sushi', ['nom nom', rickby, jake, marceline, matsuri]).

menu(hamburguesa, 'Tico Burguesas', ['sencilla con queso', 'sencilla con tocineta', doble, triple,'hamburguesa de lomo','hamburguesa de pollo']).
menu(desayuno, 'Tico Burguesas', ['gallo pinto', tostadas,'huevo jamon y tocineta', empanadas]).
menu(almuerzo, 'Tico Burguesas', [casado, 'arroz con pollo', 'carne en salsa']).
menu(tacos, 'Tico Burguesas', [pastor, pollo, cordero]).
menu(gaseosa, 'Tico Burguesas', [sprite, 'big cola', fanta, 'coca cola zero', pepsi, 'coca cola normal']).

menu(hamburguesa, 'La Parrillita de Pepe', [sencilla, quesoburguesa, especial, doble]).
menu(almuerzo, 'La Parrillita de Pepe', ['almuerzo tipico', 'bandeja paisa', mondongo,'carnes a la parrilla']).
menu(fresco, 'La Parrillita de Pepe', [naturales, calientes, licores]).
menu(gaseosa, 'La Parrillita de Pepe', [sprite, 'big cola', fanta, 'coca cola zero', pepsi, 'coca cola normal']).

menu(pizza, 'Nonnos Pizzeria', ['chicken pesto', 'chicken alfredo','buffalo chicken','sloppy joe', greek]).
menu(almuerzo, 'Nonnos Pizzeria', [spidini, cotoletta,'chicken parmesan','shrimp pizza']).
menu(postre, 'Nonnos Pizzeria', [tiramisu, cannoli, cheesecake, affogato,'nutella mousse']).
menu(fresco, 'Nonnos Pizzeria', [naturales, calientes, licores]).




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