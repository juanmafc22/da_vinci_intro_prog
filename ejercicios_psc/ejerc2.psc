Algoritmo ejerc2
//	2_ Realizar un programa que permita ingresar el ancho y el largo de un terreno en metros, ademas
//	ingresar el valor del metro cuadrado. Mostrar:
//	- Cantidad total de la supercicie.
//	- Valor total.
	
	// Declaro las variables
	Definir ancho, largo, valorMetroCuadrado, totalSuperficie, valorTotal Como Entero
	
	// Entrada: le pido al usuario los datos y los valido
	Escribir "Ingresar el ancho: "
	Leer ancho
	
	Mientras ancho <= 0 Hacer
		Escribir "Error. Valor menor a cero, ingresar valor mayor a cero: "
		Leer ancho
	FinMientras
	
	Escribir "Ingresar el largo: "
	Leer largo
	
	Mientras largo <= 0 Hacer
		Escribir "Error. Valor menor a cero, ingresar valor mayor a cero: "
		Leer largo
	FinMientras
	
	Escribir "Ingresar el valor del metro cuadrado: "
	Leer valorMetroCuadrado
	
	Mientras valorMetroCuadrado <= 0 Hacer
		Escribir "Error. Valor menor a cero, ingresar valor mayor a cero: "
		Leer valorMetroCuadrado
	FinMientras
	
	// Proceso: realizo los calculos
	totalSuperficie <- ancho * largo
	valorTotal <- valorMetroCuadrado * totalSuperficie
	
	// Salida: informo los resultados
	Escribir "La superfie del terreno es de: ", totalSuperficie, " metros cuadrados"
	Escribir "El valor total del terreno es de $", valorTotal
	
	
FinAlgoritmo
