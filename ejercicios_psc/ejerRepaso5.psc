// Realiza un programa que permita ingresar 5 edades. Calcular y
// mostrar el promedio de todas las edades ingresadas y cuántas
// edades fueron valores impares mayores que 18.

Algoritmo ejerRepaso5
	
	// Declaro las variables
	Definir edad, sumaEdades, iterador, contImparMayor18 Como Entero
	Definir promedioEdades Como Real
	// Le doy un valor inicial a sumaEdades
	sumaEdades <- 0
	contImparMayor18 <- 0
	
	// Entrada. Pido los datos
	para iterador <- 1 hasta 5 Hacer
		
		Escribir "Ingresar la edad de la persona num ", iterador
		Leer edad
		sumaEdades <- sumaEdades + edad
		
		Si (edad > 18) Y ((edad MOD 2) !=0) Entonces
			contImparMayor18 <- contImparMayor18 + 1
		FinSi
		
	FinPara
	
	// Hago los calculos que falta
	promedioEdades <- sumaEdades / 5
	
	// Salida. 
	Escribir "La suma de todas las edades: ", sumaEdades
	Escribir "Total de edades ingresadas: 5"
	Escribir "Promedio edades: ", promedioEdades
	Escribir "Edades impares mayores a 18: ", contImparMayor18
	
	
FinAlgoritmo
