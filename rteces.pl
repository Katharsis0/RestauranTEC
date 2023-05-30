:-consult("rtecbnf.pl").
:-consult("rtecdb.pl").

inicio():-
    header(), 
    datosUsuario().

header():-
    write("Bienvenidos a RestauranTEC, su bot de confianza para la recomendación de los mejores restaurantes del país.").

datosUsuario() :-
    %Consulta el tipo de comida que el usuario desea
    nl, writeln('¿Qué tipo de comida desea comer?'), nl, nl, writeln("Por ejemplo: rapida, italiana, bocas, mexicana, etc...").
    %parsear input de usuario


