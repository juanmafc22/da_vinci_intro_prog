// Realiza un programa que permita ingresar el monto total de las
// ventas realizadas para un vendedor durante el mes, de quien se
// sabe que gana un sueldo fijo de 340000 pesos más el 16 por
// ciento del monto total vendido. Con tales datos debes calcular y
// mostrar el importe a cobrar por el vendedor.

Algoritmo ejerRepaso2
	
	// Defino las variable
	Definir opcionSeguir Como Caracter
	Definir montoVenta, totalVentas, sueldoFijo, sueldoPorVentas, totalACobrar Como Entero
	
	// Le doy un valor inicial a las variables
	opcionSeguir <- ""
	sueldoFijo <- 340000
	sueldoPorVentas <- 0
	totalACobrar <- 0
	totalVentas <- 0
	
	Mientras (opcionSeguir != "SALIR") Hacer
		
		// Entrada, solicito datos de la venta
		Escribir ""
		Escribir "Ingresar el monto de la venta"
		Leer montoVenta
		totalVentas <- totalVentas + montoVenta
		sueldoPorVentas <- montoVenta * .16
		
		// Pregunto si hay otra venta
		Escribir ""
		Escribir "Dejar vacío para seguir, escribir SALIR para terminar"
		Leer opcionSeguir
		opcionSeguir <- Mayusculas(opcionSeguir)
		
	FinMientras
	
	totalACobrar <- sueldoFijo + sueldoPorVentas
	
	Escribir ""
	Escribir "Sueldo fijo $",  sueldoFijo
	Escribir ""
	Escribir "Total ventas $", totalVentas
	Escribir "Sueldo por ventas 16% de $", totalVentas, " = $", sueldoPorVentas
	Escribir ""
	Escribir "Total a cobrar $", sueldoFijo, " + $", sueldoPorVentas, " = $", totalACobrar 
	
FinAlgoritmo
