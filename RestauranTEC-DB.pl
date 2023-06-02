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

restaurante(['Catrinas', mexicana, ['Heredia', 'Calle Carolina, Miraflores, San Joaquín 40601'], 20, ['Disposiciones del Rest: Jueves de Chilaquiles']]).

restaurante(['El Puerto', mariscos, ['Puntarenas', 'Costado Oeste Del Hotel Tioga Paseo de Los Turistas Barrio El Carmen Puntarenas, Puntarenas 60101 Costa Rica'], 20, ['Disposiciones del Rest: Ambiente familiar con los mejores platillos de nuestras costas.']]).

restaurante(['Caballo Blanco', costarricense, ['Puntarenas', 'Ruta #1 , Km 131 Cruce Miramar 7 Km al norte, Puntarenas Aranjuez Costa Rica'], 20, ['Disposiciones del Rest: Ofrecemos comida Latina, Marisco, Centroamericana, Costarricense y opciones veganas']]).

restaurante(['El Chante Vegano', vegana, ['Alajuela', '25 mtrs Oeste de Oficina De Correos Alajuela Alajuela, 20101'], 20, ['Disposiciones del Rest: Restaurante libre de crueldad animal']]).

restaurante(['Rosti', rapida, ['Cartago', '150m Este De Las Ruinas, Contiguo Al Palí, Cartago 30101.'], 20, ['Disposiciones del Rest: Disponemos de un reglamento para algunas de las promociones que ofrecemos.']]).

restaurante(['Bocadito del cielo', costarricense, ['Cartago', '3kms. NE. Centro Cervantes, 10, Cervantes, Alvarado, Cartago 30602.'], 60, ['Disposiciones del Rest: Restaurante familiar, no se aceptan mascotas.']]).

restaurante(['La Posada', costarricense, ['Cartago', 'Ruta Nacional Primaria 10, Provincia de Cartago, Cervantes, Cartago 30602.'], 50, ['Disposiciones del Rest: Brindamos un menú virtual para que pueda ver nuestras comidas sin necesidad de haber llegado al restaurante.']]).

restaurante(['Mi Tierra', costarricense, ['Cartago', '2 Km Este del puente Bailey, carretera al Volcán Irazú Cartago 30701.'], 20, ['Disposiciones del Rest: Lo mejor de la comida Costarricense!.']]).

restaurante(['Las Noches', mexicana, ['San José', 'Calle 40 entre Paseo Colon 50 norte del BCR, San José 10108'], 20, ['Disposiciones del Rest: Servimos platillos mexicanos con un toque auténtico.']]).

restaurante(['Sapore Trattoria', italiana, ['San José', 'Avenida Segunda, 1 Cuadra Al Oeste de la Plaza la Democracia Curridabat, de la POPS 75 al este, Frente al CFIA, San José 10108'], 30, ['Disposiciones del Rest: Ofrecemos también buenas opciones veganas dentro de nuestro menú.']]).

restaurante(['Okami Sushi', asiatica, ['San José', '200 metros sur de Casa Matute, Barrio Lujan, San Jose 10110'], 40, ['Disposiciones del Rest: Abrimos en la mañana y en la noche, con dos horas de cierre entre estos horarios, puede consultarlos en la página del restaurante.']]).

restaurante(['Tico Burguesas', rapida, ['San José', '1 Calle 9, El Carmen, San José, 10101'], 30, ['Disposiciones del Rest: Contamos con un horario de 24 horas.']]).

restaurante(['La Parrillita de Pepe', rapida, ['Heredia', 'Heredia centro, Heredia 40101'], 20, ['Disposiciones del Rest: Opciones de comida colombiana en nuestro menú y el restarurante se mantiene abierto hasta tarde']]).

restaurante(['Nonnos Pizzeria', italiana, ['Del Banco Nacional 225 Metros Al Este, Heredia 40101'], 30, ['Disposiciones del Rest: Opciones de comida vegana y vegetariana, gran experiencia en hacer pizzas']]).
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

menu(desayuno, 'El Puerto', ['churchil de frutas', 'gallo pinto', 'gallos de queso']).
menu(almuerzo, 'El Puerto', ['casado con la proteina del dia', 'patacones con calamar', 'sopa de pescado', vigoron]).
menu(postre, 'El Puerto', [churchill, 'helado de sorbetera', 'copos']).
menu(fresco, 'El Puerto', [tamarindo, pipas]).
menu(ceviche, 'El Puerto', ['de mango', sencillo, 'supremo con langosta y calamar']).

menu(desayuno, 'Caballo Blanco', ['huevos rancheros', 'gallo pinto', 'gallos de queso']).
menu(almuerzo, 'Caballo Blanco', ['casado con la proteina del dia', 'olla de carne', 'sopa negra']).
menu(postre, 'Caballo Blanco', ['pastel del dia', 'arroz con leche', 'helados de sorbetera']).
menu(fresco, 'Caballo Blanco', [natuales]).

menu(tacos, 'El Chante Vegano', ['de birria con hongos', 'de carne de soja']).
menu(almuerzo, 'El Chante Vegano', ['casado con proteina vegetal', 'ensaladas','tofu de la casa']).
menu(desayuno, 'El Chante Vegano', ['bowl de yogurt de tofu', 'ensalada de frutas']).
menu(fresco, 'El Chante Vegano', ['natuales en agua', 'especialidad cruelty free']).

menu(pollo, 'Rosti', [fajitas, 'media pechuga deshuesada','cuarto de pollo']).
menu(almuerzo, 'Rosti', ['arroz con pollo', 'sopa azteca','rosti Casado']).
menu(desayuno, 'Rosti', [empanada, 'chalupa huevos rancheros', 'pinto bowl']).
menu(fresco, 'Rosti', ['natuales en agua', gaseosas]).

menu(desayuno, 'Bocadito del cielo', ['pinto costarricense', 'tostadas con carne de soja']).
menu(almuerzo, 'Bocadito del cielo', ['filet de res en salsa de hongos kallampa', 'trucha en salsa de limon', 'albondigas de pollo en salsa blanca', 'pollo al horno']).
menu(postre, 'Bocadito del cielo', ['yogurt con chia', 'manzanas asadas', 'piñas asadas', 'pie de limón de la casa']).
menu(fresco, 'Bocadito del cielo', [tamarindo, soya, cebada, cereza]).

menu(desayuno, 'La Posada', ['gallo pinto con huevo', 'huevos rancheros','omelette jamon y queso','desayuno posada']).
menu(almuerzo, 'La Posada', ['casado completo', 'pechuga de pollo a la parrilla', 'fajitas de pollo a la plancha','lomito encebollado','costilla de cerdo a la parrilla']).
menu(sopa, 'La Posada', ['olla de carne', 'pozol', 'sopa de mondongo', 'sopa de pollo']).
menu(postre, 'La Posada', ['tartaleta de manzana', 'torta de zanahoria','torta chilena', 'cajeta de leche La Posada']).
menu(fresco, 'La Posada', ['naturales', 'fresa con limonada', 'jugo de naranja con zanahoria']).

menu(desayuno, 'Mi Tierra', ['huevos rancheros', 'gallo pinto',omelette,'chorreada con natilla y queso','tortilla de queso con natilla y huevo']).
menu(almuerzo, 'Mi Tierra', ['casado', 'casado vegetariano','arroz con pollo','feria de gallos']).
menu(postre, 'Mi Tierra', ['arroz con leche', 'flan de coco','helados de sorbetera']).
menu(fresco, 'Mi Tierra', ['naturales en leche', 'naturales en agua',gaseosas, 'bebidas calientes: cafe, agua dulce, chocolate caliente']).

menu(tacos, 'Las Noches', ['de birria', 'de alambre con queso', 'de pollo','de chuleta con queso','de chorizo','de carnitas','al pastor']).
menu(almuerzo, 'Las Noches', ['lomito huasteco', 'lomito a la mexicana','fajitas de pollo o res','chilaquiles a la mexicana']).
menu(fresco, 'Las Noches', [naturales, 'ponche de frutas','gaseosas']).
menu(postre, 'Las Noches', ['cheesecake de limon', 'copa de helado','flan de caramelo']).

menu(pasta, 'Sapore Trattoria', ['spaghetti alla carbonara', 'gnocchi 4 formaggi','tagliatelle alla bolognese','lasagana bolognese']).
menu(pizza, 'Sapore Trattoria', [margherita, amatriciana, boscaiola, diavola, capricciosa]).
menu(postre, 'Sapore Trattoria', ['torta caprese', tiramisu,'semifreddo al torrone', 'cannolo siciliano']).
menu(cerveza, 'Sapore Trattoria', [cortigiana, duchessa, reale,'my antonia']).

menu(sushi, 'Okami Sushi', ['california roll', 'philadelphia roll','sake roll','veggie roll','pollo teriyaki roll', hosomaki]).
menu(ramen, 'Okami Sushi', ['ramen shoyu', 'ramen tonkutso','miso ramen','ramen vegetariano']).
menu(fresco, 'Okami Sushi', [gaseosas, 'bubble tea', frutal]).
menu(postre, 'Okami Sushi', ['nom nom', rickby, jake, marceline, matsuri]).

menu(hamburguesa, 'Tico Burguesas', ['sencilla con queso', 'sencilla con tocineta', doble, triple,'hamburguesa de lomo','hamburguesa de pollo']).
menu(desayuno, 'Tico Burguesas', ['gallo pinto', tostadas,'huevo jamon y tocineta', empanadas]).
menu(almuerzo, 'Tico Burguesas', [casado, 'arroz con pollo', 'carne en salsa']).
menu(tacos, 'Tico Burguesas', [crema,  chan, gaseosas]).

menu(hamburguesa, 'La Parrillita de Pepe', [sencilla, quesoburguesa, especial, doble]).
menu(almuerzo, 'La Parrillita de Pepe', ['almuerzo tipico montañero', 'bandeja paisa', mondongo,'carnes a la parrilla']).
menu(fresco, 'La Parrillita de Pepe', [naturales, gaseosas, calientes, licores]).

menu(pizza, 'Nonnos Pizzeria', ['chicken pesto', 'chicken alfredo','buffalo chikken','sloppy joe', greek]).
menu(almuerzo, 'Nonnos Pizzeria', [speidini, cotoletta,'chicken parmesan','shrimp']).
menu(postre, 'Nonnos Pizzeria', [tiramisu, cannoli, cheesecake, affogato,'nutella mousse']).




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

