(*
* Parchis Usb
*
* Descripción: Programa que implementa una versión simplificada y adaptada a las 
* pautas dadas para la realización del juego de mesa Parchís como proyecto del 
* curso de Algoritmos I CI2611 de la USB.
*
* Autores: Gabriel Iglesias
*          Daniela Socas
*
* Última modificación: 12/01/14
*)

PROGRAM ParchisUsb;

(******************************************************************************)
(*                            Declaracion de Tipos                            *)
(******************************************************************************)

TYPE 

    Fichas = (f1, f2, f3, f4); //Fichas correrspondientes a cada jugador.

    TipoJugador = (Usuario, Maquina); //Tipo de jugador.

    ColorJugador = (Azul, Rojo, Amarillo, Verde); //Color que identifica a cada
                                                  //jugador.

    NumJugadores = 2..4; //Número de jugadores posibles.

    CasillasTablero = 0..76; //Número de casillas del tablero.

    TipoCasilla = (Casa, Seguro, Normal, Pasillo, Meta);

    Casilla = Record //Registro de Casilla

        Tipo: TipoCasilla;   //Tipo de casilla.
        Nro: CasillasTablero //Número de la casilla en el tablero.

    End;

    Jugador = Record //Registro de Jugador.

        Name: String;        //Nombre para identificar al jugador.
        Tipo: TipoJugador;   //Tipo de jugador.
        Color: ColorJugador; //Color asignado al jugador.
        PosFichas: Array [Fichas] of Casilla //Arreglo para el número y tipo de
                                     //casilla en donde se encuentra la ficha.

    End;

    ListaJugadores = Array [1..4] of Jugador; //Lista de jugadores presentes en
                                              //el juego.

    MenuOpciones = (Jugar, GuardarPartida, CargarPartida, Ayuda, Salir);
    //Menu de las opcines de partida

(******************************************************************************)
(*                         Procedimientos y Funciones                         *)
(******************************************************************************)

    Procedure Bienvenida; //Da la bienvenida al juego.

    Begin

    {Pre: True}

    (* Programa a Implementar *)

    {Post: True}

    End;

(******************************************************************************)

    Procedure MostrarMenu; //Muestra el menu de juego.

    Begin

    {Pre: True}

    (* Programa a Implementar *)

    {Post: True}

    End;

(******************************************************************************)

    Function NumPlayers: Integer; //Pregunta al usuario contra cuantas máquinas 
                                  //quiere jugar.

    Begin

    {Pre: True}
    
    (* Programa a Implementar *)

    {Post: (NumPlayers = 1) \/ (NumPlayers = 2) \/ (NumPlayers = 3)}

    End;

(******************************************************************************)

    Function DatosPlayer: String; //Pide al Usuario introducir su nombre.


    Begin

    {Pre: True}

    (* Programa a Implementar *)

    {Post: DatosPlayer = nombre}

    End;

(******************************************************************************)

    Function ColorPlayer: ColorJugador; //Pide al usuario el color con el que 
                                        //desea jugar.


    Begin

    {Pre: True}

    (* Programa a Implementar *)

    {Post: (ColorPlayer = Rojo) \/ (ColorPlayer = Verde) \/ 
     (ColorPlayer = Amarillo) \/ (ColorPlayer = Azul)}

    End;    

(******************************************************************************)

    Procedure Introduccion; //Llama los tres procedimientos anteriores.

    Begin

    {Pre: True}

    (* Programa a Implementar *)

    {Post: True}

    End;

(******************************************************************************)

    Procedure Inicializar(
        var players: ListaJugadores //Lista de jugadores presentes en el juego.

    ); //Establece la posición inicial de las fichas de cada jugador además del 
       //nombre, color y tipo de jugador.

    Begin

    {Pre: True}

    (* Programa a Implementar *)

    {Post: (%exist i,j,k,m: (0 < i < 5) /\ (0 < j < 5) /\ (0 < k < 5) /\ 
     (0 < m < 5) /\ (i != j) /\ (j != k) /\ (k != m): 
     ((players[i].color = Azul) /\ (players[j].color = Rojo) /\ 
     (players[k].color = Verde) /\ (players[m].color = Amarillo)) 

     /\ 

     ((players[i].color = Azul ==> players[i].posficha[f1] = 22 /\ 
      players[i].posficha[f2] = 0 /\ players[i].posficha[f3] = 0 /\ 
      players[i].posficha[f4] = 0) 
      /\ (players[j].color = Rojo ==> players[j].posficha[f1] = 39 /\ 
      players[j].posficha[f2] = 0 /\ players[j].posficha[f3] = 0 /\ 
      players[j].posficha[f4] = 0)
      /\ (players[k].color = Verde ==> players[k].posficha[f1] = 56 /\ 
      players[k].posficha[f2] = 0 /\ players[k].posficha[f3] = 0 /\ 
      players[k].posficha[f4] = 0)
      /\ (players[m].color = Amarillo ==> players[m].posficha[f1] = 5 /\ 
      players[m].posficha[f2] = 0 /\ players[m].posficha[f3] = 0 /\ 
      players[m].posficha[f4] = 0))

    }

    End;

(******************************************************************************)

    Procedure LanzarDados(
        var dado1: Integer; //Valor del primer dado a lanzar.
        var dado2: integer  //Valor del segundo dado a lanzar.
    
    ); //Calcula de forma aleatoria el valor de los dados.

    Begin

	{ Pre: true }

    (* Programa a Implementar *)

	{ Post: ( 1 <= dado1 <= 6 ) /\ ( 1 <= dado2 <= 6 )}

    End;

(******************************************************************************)

    Procedure Comenzar(
        var playeract: Jugador; //Jugador en turno.
        var players: ListaJugadores; //Lista de jugadores presentes en el juego.
        var dado1: Integer;     //Valor del primer dado lanzado. 
        var dado2: Integer      //Valor del segundo dado lanzado.
    
    ); //Cada jugador lanza los dados para saber quien comienza.

    Begin

	{ Pre: true }

    (* Programa a Implementar *)

	{ Post: El jugador de la lista de jugadores que obtenga la suma mas alta al 
     lanzar los dados, comeinza el juego con el primer turno de la partida. En 
     caso de haber empate al lanzar los dados, los jugadores empatados vuelven a 
     lanzar }

    End;

(******************************************************************************)

    Procedure Barrera(
        var playeract: Jugador; //Jugador en turno.
        var players: ListaJugadores; //Lista de jugadores presentes en el juego.
        var ficha: Fichas;      //Ficha a verificar si tiene barreras que impidan
                                //moverla.
        var tranca: Boolean;    //Evalua True si existe una barrera que impida 
                                //mover la ficha dada.
        var dado: Integer       //Valor obtenido al lanzar el dado.        

    ); //Verifica si hay una barrera que pueda bloquear a la ficha indicada del 
       //jugador en turno.

    Begin

    {Pre: (playeract.color = Azul ==> 21 < playeract.posficha[ficha].nro < 69 \/ 
     0 < playeract.posficha[ficha] < 17)) 
     \/ (playeract.color = Rojo ==> 38 < playeract.posficha[ficha].nro < 69 \/ 
     0 < playeract.posficha[ficha] < 34))
     \/ (playeract.color = Verde ==> 55 < playeract.posficha[ficha].nro < 69 \/ 
     0 < playeract.posficha[ficha] < 51)) 
     \/ (playeract.color = Amarillo ==> 4 < playeract.posficha[ficha].nro < 68))
    }

    (* Programa a Implementar *)

    {Post: 
  
    //Evalua si existe barrera que impida mover con el valor del dado.
   
     tranca == ((%exist i,j,k: ((i = f1) \/ (i = f2) \/ (i = f3) \/ (i = f4)) /\ 
    ((j = f1) \/ (j = f2) \/ (j = f3) \/ (j = f4)) /\ (i != j) /\ (0 < k < 5) /\
     (players[k].poscficha[i].nro = player[k].poscficha[j].nro): 
     playeract.poscficha[ficha].nro < players[k].poscficha[i].nro <= 
     playeract.poscficha[ficha].nro + dado)

     \/

     //Evalua si existe barrera que impida mover la ficha 10 espacios.

     (%exist i,j,k: ((i = f1) \/ (i = f2) \/ (i = f3) \/ (i = f4)) /\ 
    ((j = f1) \/ (j = f2) \/ (j = f3) \/ (j = f4)) /\ (i != j) /\ (0 < k < 5) /\
     (players[k].poscficha[i].nro = player[k].poscficha[j].nro): 
     playeract.poscficha[ficha].nro < players[k].poscficha[i].nro <= 
     playeract.poscficha[ficha].nro + 10)

     \/

     //Evalua si existe barrera que impida mover la ficha 20 espacios.

     (%exist i,j,k: ((i = f1) \/ (i = f2) \/ (i = f3) \/ (i = f4)) /\ 
    ((j = f1) \/ (j = f2) \/ (j = f3) \/ (j = f4)) /\ (i != j) /\ (0 < k < 5) /\
     (players[k].poscficha[i].nro = player[k].poscficha[j].nro): 
     playeract.poscficha[ficha].nro < players[k].poscficha[i].nro <= 
     playeract.poscficha[ficha].nro + 20)) 

     \/     

     //Evalua si al mover con el dado se cae en una casilla seguro con dos fichas 
     //de diferentes oponenetes.
             
     (((%exist i,k,m: (i = f1 \/ i = f2 \/ i = f3 \/ i = f4) /\ (0 < k < 5) /\
     (0 < m < 5) /\ (players[k].posficha[i].tipo = seguro) /\
     (players[m].posficha[i].tipo = seguro) /\ (players[k].posficha[i].nro = 
      players[m].posficha[i].nro): (playeract.posficha[ficha].nro + dado = 
      players[k].posficha[i].nro) /\ (playeract.posficha[ficha].nro + dado = 
      players[m].posficha[i].nro))

     \/

     //Evalua si al mover 10 espacios se cae en una casilla seguro con dos fichas 
     //de diferentes oponenetes.

     ((%exist i,k,m: (i = f1 \/ i = f2 \/ i = f3 \/ i = f4) /\ (0 < k < 5) /\
     (0 < m < 5) /\ (players[k].posficha[i].tipo = seguro) /\
     (players[m].posficha[i].tipo = seguro) /\ (players[k].posficha[i].nro = 
      players[m].posficha[i].nro): (playeract.posficha[ficha].nro + 10 = 
      players[k].posficha[i].nro) /\ (playeract.posficha[ficha].nro + 10 = 
      players[m].posficha[i].nro))

     \/

     //Evalua si al mover 20 espacios se cae en una casilla seguro con dos fichas
     //de diferentes oponenetes.

     ((%exist i,k,m: (i = f1 \/ i = f2 \/ i = f3 \/ i = f4) /\ (0 < k < 5) /\
     (0 < m < 5) /\ (players[k].posficha[i].tipo = seguro) /\
     (players[m].posficha[i].tipo = seguro) /\ (players[k].posficha[i].nro = 
      players[m].posficha[i].nro): (playeract.posficha[ficha].nro + 20 = 
      players[k].posficha[i].nro) /\ (playeract.posficha[ficha].nro + 20 = 
      players[m].posficha[i].nro)))   
    
    }

    End;

(******************************************************************************)

    Procedure LLegar(
        var playeract: Jugador; //Jugador en turno.
        var ficha: Fichas;      //Ficha a verificar si puede llegar a la meta.
        var dado: Integer;      //Valor obtenido al lanzar el dado.
        var llega: Boolean      //Evalua True si es posible mover la ficha 
                                //indicada a la meta.
    
    ); //Verifica si la ficha indicada puede llegar a la meta.

    Begin

    {Pre: (playeract.color = Azul ==> 4 < playeract.posficha[ficha].nro < 18 \/
     68 < playeract.posficha[ficha].nro < 76) 
     \/ (playeract.color = Rojo ==> 21 < playeract.posficha[ficha].nro < 35 \/
     68 < playeract.posficha[ficha].nro < 76)
     \/ (playeract.color = Verde ==> 38 < playeract.posficha[ficha].nro < 52 \/
     68 < playeract.posficha[ficha].nro < 76)
     \/ (playeract.color = Amarillo ==> 55 < playeract.posficha[ficha].nro < 69)
     \/ 68 < playeract.posficha[ficha].nro < 76) 
    }

    (* Programa a Implementar *)

    {Post: llega == 

     //Evalua si la ficha llega moviendo con el dado

     ((playeract.color = Azul ==> playeract.posficha[ficha].nro + dado = 76) 
     /\ (playeract.color = Rojo ==> playeract.posficha[ficha].nro + dado = 76)
     /\ (playeract.color = Verde ==> playeract.posficha[ficha].nro + dado = 76)
     /\ (playeract.color = Amarillo ==> 55 < playeract.posficha[ficha].nro 
     + dado = 76))

     \/

     //Evalua si la ficha llega moviendo 20 espacios.

     ((playeract.color = Azul ==> playeract.posficha[ficha].nro + 20 = 76) 
     /\ (playeract.color = Rojo ==> playeract.posficha[ficha].nro + 20 = 76)
     /\ (playeract.color = Verde ==> playeract.posficha[ficha].nro + 20 = 76)
     /\ (playeract.color = Amarillo ==> 55 < playeract.posficha[ficha].nro 
     + 20 = 76))

     \/

     //Evalua si la ficha llega moviendo 10 espacios.

     ((playeract.color = Azul ==> playeract.posficha[ficha].nro + 10 = 76) 
     /\ (playeract.color = Rojo ==> playeract.posficha[ficha].nro + 10 = 76)
     /\ (playeract.color = Verde ==> playeract.posficha[ficha].nro + 10 = 76)
     /\ (playeract.color = Amarillo ==> 55 < playeract.posficha[ficha].nro 
     + 10 = 76))

    }

    End;

(******************************************************************************)

    Procedure Comer(
        var playeract: Jugador;     //Jugador en Turno.
        var players: ListaJugadores; //Lista de jugadores presentes en el juego.
        var ficha: Fichas;          //Ficha a verificar si puede comer.
        var dado: Integer;          //Valor obtenido al lanzar el dado.
        var eat: Boolean            //Evalua True si es posible comer alguna 
                                    //ficha de algun oponente.

    ); //Verifica si la ficha indicada del jugador en turno puede comer a 
       //otra. 

    Begin

    {Pre: (playeract.color = Azul ==> 21 < playeract.posficha[ficha].nro < 69 \/ 
     0 < playeract.posficha[ficha] < 17)) 
     \/ (playeract.color = Rojo ==> 38 < playeract.posficha[ficha].nro < 69 \/ 
     0 < playeract.posficha[ficha] < 34))
     \/ (playeract.color = Verde ==> 55 < playeract.posficha[ficha].nro < 69 \/ 
     0 < playeract.posficha[ficha] < 51)) 
     \/ (playeract.color = Amarillo ==> 4 < playeract.posficha[ficha].nro < 68))
    }

    (* Programa a Implementar *)

    {Post: 

     //Evalua si la ficha puede comer a otra moviendo con el dado.

     eat == ((%exist i,j: (i = f1) \/ (i = f2) \/ (i = f3) \/ (i = f4)
     /\ (0 < j < 5): (playeract.posficha[ficha].nro + dado = 
     players[j].posficha[i].nro) /\ (players[j].posficha[i].tipo != seguro))
    
     \/

     //Evalua si la ficha puede comer a otra moviendose 10 espacios.

     (%exist i,j: (i = f1) \/ (i = f2) \/ (i = f3) \/ (i = f4) /\ (0 < j < 5): 
     (playeract.posficha[ficha].nro + 10 = players[j].posficha[i].nro) /\ 
     (players[j].posficha[i].tipo != seguro))

     \/

     //Evalua si la ficha puede comer a otra moviendose 20 espacios.

     (%exist i: (i = f1) \/ (i = f2) \/ (i = f3) \/ (i = f4) /\ (0 < j < 5):
     (playeract.posficha[ficha].nro + 20 = player2.posficha[i].nro) /\
     (players[j].posficha[i].tipo != seguro)))

     /\ 

     //Asegura que no exista una barrera o dos fichas de diferentes oponentes en  
     //la casilla a caer

     !(%exist i,j,k: (i = f1) \/ (i = f2) \/ (i = f3) \/ (i = f4) /\ (0 < j < 5)
      /\ (0 < k < 5): (players[j].posficha[i].nro = players[k].posficha[i].nro))
    }

    End;   

(******************************************************************************)

    Procedure Opciones(
        var playeract: Jugador; //Jugador en turno
        var ficha: Fichas       //Ficha de la cual se mostraran las jugadas 
                                //posibles a realizar.

    ); //Calcula al jugador las jugados posibles de realizar. Este procedimiento
       //llama a los 3 anteriores ('Barrera', 'Llegar' y 'Comer')

    Begin

    {Pre: True}

    (* Programa a Implementar *)

    {Post: True}

    End;

(******************************************************************************)

    Procedure Mover(
        var playeract: Jugador; //Jugador en turno.
        var ficha: Fichas;      //Ficha a mover.
        var dado: Integer       //Valor obtenido al lanzar el dado.

    ); //Mueve la ficha indicada por el usuario.

    Begin

    {Pre: (playeract.color = Azul ==> 21 < playeract.posficha[ficha].nro < 69 \/ 
     0 < playeract.posficha[ficha] < 17)) 
     \/ (playeract.color = Rojo ==> 38 < playeract.posficha[ficha].nro < 69 \/ 
     0 < playeract.posficha[ficha] < 34))
     \/ (playeract.color = Verde ==> 55 < playeract.posficha[ficha].nro < 69 \/ 
     0 < playeract.posficha[ficha] < 51)) 
     \/ (playeract.color = Amarillo ==> 4 < playeract.posficha[ficha].nro < 68))
     /\ playeract.tipo = usuario
    }

    (* Programa a Implementar *)

    {Post:(playeract.posficha[ficha].nro = playeract.posficha[ficha].nro' + dado)
     \/ (playeract.posficha[ficha].nro = playeract.posficha[ficha].nro' + 10) 
     \/ (playeract.posficha[ficha].nro = playeract.posficha[ficha].nro' + 20)}

    End;

(******************************************************************************)

    Procedure MoverMaq(
        var playeract: Jugador; //Jugador en turno.
        var ficha: Fichas;      //Ficha a mover.
        var dado: Integer       //Valor obtenido al lanzar el dado.

    ); //Mueve la ficha indicada por la máquina en turno de juego.

    Begin

    {Pre: (playeract.color = Azul ==> 21 < playeract.posficha[ficha].nro < 69 \/ 
     0 < playeract.posficha[ficha] < 17)) 
     \/ (playeract.color = Rojo ==> 38 < playeract.posficha[ficha].nro < 69 \/ 
     0 < playeract.posficha[ficha] < 34))
     \/ (playeract.color = Verde ==> 55 < playeract.posficha[ficha].nro < 69 \/ 
     0 < playeract.posficha[ficha] < 51)) 
     \/ (playeract.color = Amarillo ==> 4 < playeract.posficha[ficha].nro < 68))
     /\  playeract.tipo = maquina
    }

    (* Programa a Implementar *)

    {Post:(playeract.posficha[ficha].nro = playeract.posficha[ficha].nro' + dado)
     \/ (playeract.posficha[ficha].nro = playeract.posficha[ficha].nro' + 10) 
     \/ (playeract.posficha[ficha].nro = playeract.posficha[ficha].nro' + 20)}

    End;

(******************************************************************************)

    Procedure Turno(
        var playeract //Jugador en turno.

    ); //Llama a las funciones y procedimientos necesarios para completar el 
       //turno del jugador actual.

    Begin

    {Pre: True}

    (* Programa a Implementar *)

    {Post: True}

    End;

(******************************************************************************)

    Procedure Resumen( 
    	var playeract: Jugador; //Jugador en turno.
        var ficha: Fichas      //Ficha a verificar posicion.
    
    ); // Hace el resumen antes de que el usuario lance los dados.

    Begin

    {Pre: (playeract.color = Azul ==> 0 < playeract.posficha[ficha].nro < 18 \/ 
     21 < playeract.posficha[ficha] < 76)) 
     \/ (playeract.color = Rojo ==> 38 < playeract.posficha[ficha].nro < 76 \/ 
     0 < playeract.posficha[ficha] < 35))
     \/ (playeract.color = Verde ==> 55 < playeract.posficha[ficha].nro < 76 \/ 
     0 < playeract.posficha[ficha] < 52)) 
     \/ (playeract.color = Amarillo ==> 4 < playeract.posficha[ficha].nro < 77))
    }

    (* Programa a Implementar *)

    {Post: true }

    End;

(******************************************************************************)

    Procedure Ganar( 
	    var playeract: Jugador; //Jugador en turno.
        var ficha: Fichas;      //Ficha a verificar si llegó a la meta.
	    var gano: Boolean	    //Evalua true si alguien gano

    ); //Chequea al final de cada turno si hay un ganador.

    Begin

    {Pre: (playeract.color = Azul ==> 0 < playeract.posficha[ficha].nro < 18 \/ 
     21 < playeract.posficha[ficha] < 76)) 
     \/ (playeract.color = Rojo ==> 38 < playeract.posficha[ficha].nro < 76 \/ 
     0 < playeract.posficha[ficha] < 35))
     \/ (playeract.color = Verde ==> 55 < playeract.posficha[ficha].nro < 76 \/ 
     0 < playeract.posficha[ficha] < 52)) 
     \/ (playeract.color = Amarillo ==> 4 < playeract.posficha[ficha].nro < 77))
    }

    (* Programa a Implementar *)

    {Post: gano == (%forall i: i = f1 /\ i = f2 /\ i = f3 /\ i = f4: 
     (playeract.posficha[i].nro = 76) 
	 }

    End;

(******************************************************************************)

    Procedure TerminarTurno(
        var playeract: Jugador; //Jugador en turno.
	    var dado1: integer;
	    var dado2: integer

    ); //Termina el turno actual y pasa al siguiente jugador.

    Begin

    {Pre: dado1 != dado2 }

    (* Programa a Implementar *)

    {Post: playeract.color = Amarillo ==> playeract.color = Azul /\ 
     playeract.color = Azul ==> playeract.color = Rojo /\ 
     playeract.color = Rojo ==> playeract.color = verde /\ 
     playeract.color = Verde ==> playeract.color = Amarillo}

    End;

(******************************************************************************)

    Procedure FinJuego(

    ); //Finaliza el juego y dice quien gana.

     Begin

    {Pre: True}

    (* Programa a Implementar *)

    {Post: (%exist i: 0 < i < 5: players[i].posficha[f1].nro = 76 /\ 
     players[i].posficha[f2].nro = 76 /\ players[i].posficha[f3].nro = 76 /\
     players[i].posficha[f4].nro = 76)}

    End;

(******************************************************************************)
(*                                 Variables                                  *)
(******************************************************************************)   

VAR

    jugadores: ListaJugadores; //Lista de jugadores presentes en el juego.
    jugadoract: Jugador; //Jugador en turno.
    dado_1: Integer;     //Almacena el valor del primer dado al ser lanzado.
    dado_2: Integer;     //Almacena el valor del segundo dado al ser lanzado.
    matar: Boolean;      //Evalua una la ficha puede comer a la de un oponente.
    muro: Boolean;       //Evalua si una ficha tiene una barrera por delante  
                         //que impida moverla.
    fin: Boolean;        //Evalua si es posible llegar a la meta.
    win: Boolean;        //Evalua si algun jugador gana la partida.
    ficha1: Fichas;      //Fichera número 1.
    ficha2: Fichas;      //Fichera número 2.
    ficha3: Fichas;      //Fichera número 3.
    ficha4: Fichas;      //Fichera número 4.

(******************************************************************************)
(*                             Programa Principal                             *)
(******************************************************************************) 

BEGIN

    (* Programa Principal *)

END.
  
