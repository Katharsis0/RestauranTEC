%                   ______________________________________________________________________________
%__________________/ Restaurantes

% forma --> restaurante("nombre de restaurante").

restaurante("Bella Italia").

restaurante("Italianísimo").

restaurante("McBurguesa").

restaurante("La Casita Frita").

restaurante("Wongs").

restaurante("El Pub").

%                   ______________________________________________________________________________
%__________________/ Disposiciones de cada restaurante

% forma --> disposiciones("nombre de restaurante", "disposición").

disposiciones("Bella Italia", "Disposiciones del Rest. : No se permiten mascotas. La vestimenta es formal.").

disposiciones("Italianísimo", "Disposiciones del Rest. : Utilizar mascarilla.").

disposiciones("McBurguesa","Disposiciones del Rest. : Asista y Diviértase.").

disposiciones("La Casita Frita","Disposiciones del Rest. : Solo se permite pedir para llevar.").

disposiciones("Wongs","Disposiciones del Rest. : Solo contamos con palillos, no ofrecemos cubiertos.").

disposiciones("El Pub","Disposiciones del Rest. : Solo se permite el ingreso de mayores de edad.").


%                   ______________________________________________________________________________
%__________________/ Menú de cada restaurante

% forma --> menu("nombre de restaurante", "Tipo de Comida", ["Platillos":["Sabores"]]).

menu("Bella Italia","Italiano",["Pizza", ["Jamón y Queso", "Suprema", "Hawaiana"],"Calzone","Spaghetti"]).

menu("Italianísimo","Italiano", ["Pizza", ["Pepperonni"], "Calzone", "Spaghetti"]).

menu("McBurguesa","Comida Rápida",["Hamburguesas", "Tacos", "Papas"]).

menu("Wongs", "Asiática",["Sushi",["California Roll", "Avocado Roll", "Tempura"], "Ramen", "Chop Suey"]).

menu("La Casita Frita", "Comida Rápida",["Empanadas", "Pollo", "Nachos"]).

menu("El Pub", "Bocas", ["Chifrijo", "Dados de queso", "Patacones"]).

%                   ______________________________________________________________________________
%__________________/ Hechos para la búsqueda de pizza

% forma --> pizza("Restaurante A","Restaurante B").

pizza("Bella Italia", "Italianísimo").

% forma --> pizza("Restaurante",["Sabores"]).

pizza("Bella Italia",["Jamón y Queso","Suprema","Hawaiana"]).

pizza("Italianísimo",["Pepperonni"]).


%                   ______________________________________________________________________________
%__________________/ Hechos para la búsqueda de comida rápida

% forma --> rapida("Restaurante A","Restaurante B").

rapida("McBurguesa", "La Casita Frita").

% forma --> rapida("Restaurante",["Platillos"]).

rapida("McBurguesa", ["Hamburguesas","Tacos","Papas"]).

rapida("La Casita Frita", ["Empanadas","Pollo","Nachos"]).


%                   ______________________________________________________________________________
%__________________/ Hechos para la búsqueda de sushi

% forma --> sushi("Restaurante",["Sabores"]).
sushi("Wongs", ["California Roll", "Avocado Roll", "Tempura"]).


%                   ______________________________________________________________________________
%__________________/ Hechos para la búsqueda de bocas

% forma --> bocas("Restaurante",["Platillos"]).
bocas("El Pub", ["Chifrijo", "Dados de queso", "Patacones"]). 


%                   ______________________________________________________________________________
%__________________/ Direcciones para cada restaurante

% forma --> direccion("Restaurante","direccion").
direccion("Bella Italia", "Centro Comercial Paco, Escazú 10201, San José").

direccion("Italianísimo", "Barrio San Antonio, Ciudad Quesada 21001, Alajuela").

direccion("McBurguesa", "Calle Alice, Jaco, Garabito 61101, Puntarenas").

direccion("La Casita Frita", "C. 13, Cartago 30101, Cartago").

direccion("Wongs", "Av. Central, El Carmen 10101, San José").

direccion("El Pub","Carretera A Paraíso, Cartago 30109, Cartago"). 


%                   ______________________________________________________________________________
%__________________/ Capacidad de cada restaurante

% forma --> capacidad("Restaurante",capacidad).
capacidad("Bella Italia", 25).

capacidad("Italianísimo", 45).

capacidad("McBurguesa", 15).

capacidad("La Casita Frita", 5).

capacidad("Wongs", 50).

capacidad("El Pub", 20).




%                   ______________________________________________________________________________
%__________________/ Sintagmas Nominales

% forma --> determinante(numero,genero,determinante,oracion).
determinante(singular,femenino,[una|O],O). %[determinante|O] vincula el determinante con la lista de palabras restantes de la oracion O.

determinante(plural,femenino,[unas|O],O).

determinante(singular,masculino,[un|O],O).

determinante(plural,masculino,[unos|O],O).


% forma --> pronombre(pronombre,oracion).
pronombre([yo|O],O). %[yo|O] vincula el pronombre el resto de palabras de la oracion O.


%                   ______________________________________________________________________________
%__________________/ Sintagmas Verbales



%                   ______________________________________________________________________________
%__________________/ Funciones de Utilidad

%Funcion que verifica si un elemento pertenece a una lista 
pertenece(X, [X|_]).
pertenece(X, [_|R]):-pertenece(X,R).