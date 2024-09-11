// Realiza un programa que permita al usuario ingresar números
// hasta que se introduzca un 0. La computadora debe mostrar el
// número máximo y el número mínimo.

Algoritmo ejerRepaso7
	
	Definir num, max, min Como Entero
	Definir banderaPrimerNum Como Logico
	// le doy valor inicial a la bandera
	banderaPrimerNum <- Verdadero
	
	Escribir "Ingresar un numero: "
	Leer num
	
	Si num != 0 Entonces
		
		Mientras (num != 0) Hacer
			
			Si banderaPrimerNum  Entonces
				max <- num
				min <- num
				banderaPrimerNum <- Falso
			SiNo
				Si num > max Entonces
					max <- num
				FinSi
				Si num < min Entonces
					min <- num
				FinSi
			FinSi
			
			Escribir "Ingresar otro numero: "
			Leer num
			
		FinMientras
		
		Escribir "El minimo fue: ", min
		Escribir "El maximo fue: ", max
		
	SiNo
		Escribir "Error. No se ingresó ningún numero"
	FinSi
	
FinAlgoritmo
