// Realiza un programa que a partir de un n�mero entero cant
// ingresado por el usuario permita cargar por teclado cant n�meros
// enteros. La computadora debe mostrar cu�l fue el mayor n�mero
// y en qu� posici�n apareci�.


Algoritmo ejerRepaso6
	
	// Defino la variables
	Definir iterador, cantNumeros, mayor, num Como Entero
	Definir banderaPrimerNumero Como Logico
	
	// Le doy un valor inicla a la bandera
	banderaPrimerNumero <- Verdadero
	
	Escribir "Ingresar cant de numeros a evaluar"
	Leer cantNumeros

	
	para iterador <- 1 hasta cantNumeros Hacer
		
		Escribir "Ingresar el numero ", iterador, ": "
		Leer num
		
		Si banderaPrimerNumero Entonces
			mayor <- num
			banderaPrimerNumero <- Falso
		SiNo
			Si num > mayor Entonces
				mayor <- num
			FinSi
		FinSi
		
	FinPara
	
	Escribir "El mayor de los ", cantNumeros, " numeros es: ", mayor
	
FinAlgoritmo
