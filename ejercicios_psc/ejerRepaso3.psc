//Realizó un programa que permita ingresar dos números enteros e
//indique cuál de ellos es el mayor.

Algoritmo ejerRepaso3
	
	// Declaro los numeros
	Definir numero1, numero2 Como Entero
	
	Escribir "Ingresar el numero 1"
	Leer numero1
	
	Escribir "Ingresar el numero 2"
	Leer numero2
	
	Si numero1 > numero2 Entonces
		Escribir numero1, " > ", numero2
	SiNo
		Si numero2 > numero1 Entonces
			Escribir numero2, " > ", numero1
		SiNo
			Escribir numero1, " = ", numero2
		FinSi
	FinSi
	
FinAlgoritmo
