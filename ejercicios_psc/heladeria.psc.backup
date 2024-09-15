
// Se selecciona el tama?o
// - C, M o G

// Por cada compra se ingresa
// - Cantidad de gustos (>0 y <=4)
// - Importe a cobrar + Comisión de heladero ($50).
// - Nombre de quien lo compra.

// Por cada pedido, se desea saber:
// - Cual es el gusto con menos calorias
// - de ese pedido y en que orden se lo agregó.
// Al finalizar el día se pide:
// - Cantidad de pedidos por tamaño.
// - Promedio importe entre todas las compras
// - Cuál fue el pedido más caro y quien lo compr?.
// - Porcentaje de pedidos de tipo 'C' con respecto al total.

// Todos los datos ingresados por parte del usuario deben ser validados
// antes de procesarse

// Se termina cuando se ingresa TERMINAR 

Funcion res <- validarSeguir(opcion)
	Definir res Como Logico
	res <- Falso
	Si (opcion = "") Entonces
		res <- Verdadero
	FinSi
FinFuncion

Funcion res <- validarTamanio(opcion)
	Definir res Como Logico
	res <- Falso
	Si (opcion = "C" O opcion = "M" O opcion = "G") Entonces
		res <- Verdadero
	FinSi
FinFuncion

Funcion res <- validarCantGustos(numero)
	Definir res Como Logico
	res <- Falso
	SI (numero > 0 Y numero <= 4) Entonces
		res <- Verdadero
	FinSi
FinFuncion

Funcion res <- validarOpcionSeguir(texto)
	Definir res Como Logico
	res <- Falso
	Si (texto != "") Entonces
		res <- Verdadero
	FinSi
FinFuncion

Funcion res <- validarTipoGusto(numero)
	Definir res Como Logico
	res <- Falso
	SI (numero > 0 Y numero <= 6) Entonces
		res <- Verdadero
	FinSi
FinFuncion



Algoritmo heladeria
	
	// Declaro las variables	
	Definir textoSeguir, tamanioPedido, nombreCliente, gustoMenorCalorias, personaConPedidoMasCaro Como Caracter
	Definir COSTO_HELADO_C, COSTO_HELADO_M, COSTO_HELADO_G, COSTO_VAINILLA, COSTO_LIMON, COSTO_FRUTILLA, COSTO_DDL, COSTO_DDL_GRANIZADO, COSTO_CHOCOLATE Como Entero
	Definir cantGustos, iteradorCantPedidos, saborGusto, importeACobrar, totalVentas, cantMenorCalorias, ordenGustoMenorCalorias, ordenPedidoMenorCalorias, pedidoMasCaro Como Entero
	Definir cantPedidosC, cantPedidosM, cantPedidosG, numTotalPedidos Como Entero
	Definir CALORIAS_VAINILLA, CALORIAS_LIMON, CALORIAS_FRUTILLA, CALORIAS_DDL, CALORIAS_DDL_GRANIZADO, CALORIAS_CHOCOLATE Como Entero
	Definir opcionSeguir, banderaPrimeraOpcionGusto, banderaPedidoMasCaro Como Logico
	Definir promedioVtaPorPedido, porcentajePedidosC Como Real
	
	// Le doy valor inicial a algunas variables
	// bandera para segfuir sumando pedidos
	opcionSeguir <- Verdadero
	// constantes con los COSTO POR TAMAÑO
	COSTO_HELADO_C <- 2000 
	COSTO_HELADO_M <- 3500
	COSTO_HELADO_G <- 4100
	// constantes con EL COSTO por sabor
	COSTO_VAINILLA <- 100
	COSTO_LIMON <- 200
	COSTO_FRUTILLA <- 300
	COSTO_DDL <- 400
	COSTO_DDL_GRANIZADO <- 500
	COSTO_CHOCOLATE <- 600
	// constantes con las CALORIAS por gusto
	CALORIAS_VAINILLA <- 1000
	CALORIAS_LIMON <- 2000
	CALORIAS_FRUTILLA <- 3000
	CALORIAS_DDL <- 4000
	CALORIAS_DDL_GRANIZADO <- 5000
	CALORIAS_CHOCOLATE <- 6000
	// variable totalizadora de las ventas: suma de todos los pedidos
	totalVentas <- 0
	// le asigno un valor de 1 a esta variable, el primer gusto siempre va a ser el de menor calorias 
	// de ahi en mas se compara y si asigna si las calorias son menores
	ordenPedidoMenorCalorias <- 1
	// inicializo los contadores de los pedidos
	cantPedidosC <- 0
	cantPedidosM <- 0
	cantPedidosG <- 0
	numTotalPedidos <- 0
	// pedido mas caro
	pedidoMasCaro <- 0
	// banderaPedidoMasCaro para registrar el primer pedido como mas caro
	banderaPedidoMasCaro <- Verdadero
	personaConPedidoMasCaro <- ""
	
	
	Mientras opcionSeguir Hacer
		
		// coloco la bandera de primer pedido adentro del mientras para que se restee con cada nuevo pedido
		// si la dejaba afuera quedada siempre en FALSO y no me tomaba los valosres siguietes post cambio de bandera
		banderaPrimeraOpcionGusto <- Verdadero
		
		// Reseto las variables
		// administro ciertas variables antes de entrar el FOR/MIENTras para que no se me acumulen valores
		// resteo el valor de cantMenorCalorias
		cantMenorCalorias <- 0
		// Reseteo en gusto con menos calorias.
		gustoMenorCalorias <- ""
		
		// le pido al cliete su nombre
		Escribir "Ingrese su nombre: "
		Leer nombreCliente
		
		// solicito el tama?o del pedido
		Escribir ""
		Escribir "Hola ", nombreCliente, ". Ingrese su pedido."
		Escribir "Elija el tamaño: C, M o G"
		Leer tamanioPedido
		tamanioPedido <- Mayusculas(tamanioPedido)
		
		// valido el tama?o del pedido
		Mientras NO(validarTamanio(tamanioPedido)) Hacer
			Escribir "Error. Elija Solo C, M, o G para el tama?o"
			Leer tamanioPedido
			tamanioPedido <- Mayusculas(tamanioPedido)
		FinMientras
		
		// Sumo las cantidades por tamaño de pedido
		Si tamanioPedido = "C" Entonces
			cantPedidosC <- cantPedidosC + 1
		SiNo
			Si tamanioPedido = "M" Entonces
				cantPedidosM <- cantPedidosM + 1
			SiNo
				cantPedidosG <- cantPedidosG +1
			FinSi
		FinSi
		
		// solicito la cant de gustos
		Escribir ""
		Escribir "Ingrese la cantidad de gustos a pedir, hasta 4"
		Leer cantGustos
		
		// valido la cantidad de gustos
		Mientras NO(validarCantGustos(cantGustos)) Hacer
			Escribir "Error. Elija hasta 4 gustos"
			Leer cantGustos
		FinMientras
		
		// inicializo el valor de importe a cobrar por helado con solamente la comisi?n del heladero
		importeACobrar <- 50 
		// iniicalizo el contador para registrar en qué orden se hizo el pedido con menor calorias 
		// después permito que ese valor sea el numero de la iteración del FOR
		ordenGustoMenorCalorias <- 0
		
		
		Para iteradorCantPedidos <- 1 Hasta cantGustos Hacer
			
//			Escribir "Var iteradorCantPedidos al comienzo: ", iteradorCantPedidos
			
			// muestro el num del gusto que estoy pidiendo
			Escribir ""
			Escribir "Ingresar el gusto num: ", iteradorCantPedidos
			// le pregunto al usuario que gusto quiere, tiene que ser en formato de numero
			Escribir "Qué gustos quire? Ingresar el numero: 1(Vainilla), 2(Limon), 3(Frutilla), 4(DDL), 5(DDL Granizado) ? 6(Chocolate)"
			Leer saborGusto
			
			// valido el gusto que est?n pidiendo
			Mientras NO(validarTipoGusto(saborGusto)) Hacer
				Escribir "Error. Ingresar el numero: 1(Vainilla), 2(Limon), 3(Frutilla), 4(DDL), 5(DDL Granizado) ? 6(Chocolate)"
				Leer saborGusto
			FinMientras
			
			// Sumo el valor de cada gusto al pedido
			Segun saborGusto Hacer
				1:
					importeACobrar <- importeACobrar + COSTO_VAINILLA
				2:
					importeACobrar <- importeACobrar + COSTO_LIMON
				3:
					importeACobrar <- importeACobrar + COSTO_FRUTILLA
				4:
					importeACobrar <- importeACobrar + COSTO_DDL
				5:
					importeACobrar <- importeACobrar + COSTO_DDL_GRANIZADO
				6:
					importeACobrar <- importeACobrar + COSTO_CHOCOLATE
				De Otro Modo:
			FinSegun
			
			
			// Entro en su IF (viendo si se hizo un primer pedido o no con una bandera) para 
			// asignar valores de menor cant de calorias y nommbre de gusto con menor calorias
			// al primer pedido, luego con esa bandera ya utilizada,
			// veo el resto de los pedidos y verifico si la calorias de ese pedido es menor al ya
			// registrado y asigno nombre de gusto con menos calorias también.
			// También registro el orden del gusto con la menor cant de calorias usando el num del iterador del FOR
			Si banderaPrimeraOpcionGusto Entonces
				
//				Escribir "Entro acá xq la bandera de primer gusto es: ", banderaPrimeraOpcionGusto
				
				Segun saborGusto Hacer
					1:
						cantMenorCalorias <- CALORIAS_VAINILLA
						gustoMenorCalorias <- "Vainilla"
						ordenGustoMenorCalorias <- iteradorCantPedidos
					2:
						cantMenorCalorias <- CALORIAS_LIMON
						gustoMenorCalorias <- "Limón"
						ordenGustoMenorCalorias <- iteradorCantPedidos
					3:
						cantMenorCalorias <- CALORIAS_FRUTILLA
						gustoMenorCalorias <- "Frutilla"
						ordenGustoMenorCalorias <- iteradorCantPedidos
					4: 
						cantMenorCalorias <- CALORIAS_DDL
						gustoMenorCalorias <- "Dulce De Lecho"
						ordenGustoMenorCalorias <- iteradorCantPedidos
					5: 
						cantMenorCalorias <- CALORIAS_DDL_GRANIZADO
						gustoMenorCalorias <- "Dulce de Leche Granizado"
						ordenGustoMenorCalorias <- iteradorCantPedidos
					6:
						cantMenorCalorias <- CALORIAS_CHOCOLATE
						gustoMenorCalorias <- "Chocolate"
						ordenGustoMenorCalorias <- iteradorCantPedidos
					De Otro Modo:
						
				FinSegun
				// Cambio el valor de la bandera para que se evaluen el resto
				banderaPrimeraOpcionGusto <- Falso
				
			SiNo
						
				Segun saborGusto Hacer
					1:
						Si CALORIAS_VAINILLA < cantMenorCalorias Entonces
							cantMenorCalorias <- CALORIAS_VAINILLA
							gustoMenorCalorias <- "Vainilla"
							ordenGustoMenorCalorias <- iteradorCantPedidos
						FinSi
					2:
						Si CALORIAS_LIMON < cantMenorCalorias Entonces
							cantMenorCalorias <- CALORIAS_LIMON
							gustoMenorCalorias <- "Limon"
							ordenGustoMenorCalorias <- iteradorCantPedidos
						FinSi
					3:
						Si CALORIAS_FRUTILLA < cantMenorCalorias Entonces
							cantMenorCalorias <- CALORIAS_FRUTILLA
							gustoMenorCalorias <- "Frutilla"
							ordenGustoMenorCalorias <- iteradorCantPedidos
						FinSi
					4:
						Si CALORIAS_DDL < cantMenorCalorias Entonces
							cantMenorCalorias <- CALORIAS_DDL
							gustoMenorCalorias <- "Dulce de Leche"
							ordenGustoMenorCalorias <- iteradorCantPedidos
						FinSi
					5:
						Si CALORIAS_DDL_GRANIZADO < cantMenorCalorias Entonces
							cantMenorCalorias <- CALORIAS_DDL_GRANIZADO
							gustoMenorCalorias <- "Dulce de Leche Granizado"
							ordenGustoMenorCalorias <- iteradorCantPedidos
						FinSi
					6:
						Si CALORIAS_CHOCOLATE < cantMenorCalorias Entonces
							cantMenorCalorias <- CALORIAS_CHOCOLATE
							gustoMenorCalorias <- "Chocolate"
							ordenGustoMenorCalorias <- iteradorCantPedidos
						FinSi
					De Otro Modo:
						
				FinSegun
			FinSi
			
		FinPara
		
		// Agrego al importe a cobrar el valor del helado, lo saco fuera del  (PARA) FOR para
		// solo se sume una vez. 
		Si tamanioPedido = "C" Entonces
			importeACobrar <- importeACobrar + COSTO_HELADO_C
		SiNo
			Si tamanioPedido = "M" Entonces
				importeACobrar <- importeACobrar + COSTO_HELADO_M
			SiNo
				importeACobrar <- importeACobrar + COSTO_HELADO_G
			FinSi
		FinSi
		
		Escribir ""
		Escribir "Los resultados de este pedido"
		Escribir "-----"
		Escribir "El costo total del helado es de $", importeACobrar
		Escribir "El gusto con menor cant de calorias del pedido fue ", gustoMenorCalorias, " con ", cantMenorCalorias, " calorias"
		Escribir "Se pidió en el orden ", ordenGustoMenorCalorias, " de  los ", cantGustos, " elegidos"
		
		// sumo al total de ventas
		totalVentas <- totalVentas + importeACobrar
		
		Si banderaPedidoMasCaro Entonces
			pedidoMasCaro <- importeACobrar
			personaConPedidoMasCaro <- nombreCliente
			banderaPedidoMasCaro <- Falso
		SiNo
			Si importeACobrar > pedidoMasCaro Entonces
				pedidoMasCaro <- importeACobrar
				personaConPedidoMasCaro <- nombreCliente
			FinSi
		FinSi
		
		// le sumo 1 a la cant de pedidos
		numTotalPedidos <- numTotalPedidos + 1
		
		Escribir ""
		Escribir "Presione enter para ingresar otro pedido. Escriba salir para terminar"
		Leer textoSeguir
		textoSeguir <- Mayusculas(textoSeguir)
		opcionSeguir <- validarSeguir(textoSeguir)
		
		
		
	FinMientras
	
	// calculo promedio de ventas
	promedioVtaPorPedido <- totalVentas / numTotalPedidos
	
	// calculo % de pedidos C con respecto al total
	porcentajePedidosC <- (cantPedidosC / numTotalPedidos) * 100
	
	// Muestro la cant de pedidos x tamaño
	Escribir ""
	Escribir "Los resultados de los totales"
	Escribir "-----"
	Escribir "Cantidad de pedidoso C: ", cantPedidosC
	Escribir "Cantidad de pedidoso M: ", cantPedidosM
	Escribir "Cantidad de pedidoso G: ", cantPedidosG
	// Muestro promedio de ventas de los pedidos
	Escribir "El promedio de importe entre todos los pedidos fue de $", promedioVtaPorPedido
	// Muestro pedido mas caro y de quien fue
	Escribir "El pedido más caro fue de $", pedidoMasCaro, " y lo compró ", nombreCliente
	// Muestro % de pedidos de tipo C con respecto al totalVentas
	Escribir "El % de pedidos de tipo C con respecto al total fue de ", porcentajePedidosC, "%"
	
FinAlgoritmo
