// 1_ Crea un programa que permita ingresar dos números naturales. Mostrar el resultado con las 4
// operaciones matematicas (+,-,/,*)
// 6_ Cree su propia calculadora, introduzca el ejercicio 1 en un ciclo de repetición hasta que el usuario
// introduzca SALIR

Algoritmo ejerc6
		
	// Declaro las variables
	Definir numero1, numero2, suma, resta, multiplicacion Como Entero
	Definir division Como Real
	Definir mensajeError, opcionSeguir Como Caracter
	
	// Inicializo el valor de mensajeError
	mensajeError <- "No se puede dividir por cero"
	opcionSeguir <- ""
	
	// Ahora inclutyo todo en un while como pide el enunciado
	Mientras (opcionSeguir != "SALIR") Hacer
		
		// Entrada: solicito los numeros del usuario
		Escribir "Ingresar el primer numero: "
		Leer numero1
		Escribir "Ingresar el segundo numero: "
		Leer numero2
		
		// Proceso: realizo las 4 operaciones matemáticas
		suma <- numero1 + numero2
		resta <- numero1 - numero2
		multiplicacion <- numero1 * numero2
		
		Si numero2 != 0 Entonces
			division <- numero1 / numero2
		FinSi
		
		Escribir numero1, " + ", numero2, " = ", suma
		Escribir numero1, " - ", numero2, " = ", resta
		Escribir numero1, " * ", numero2, " = ", multiplicacion
		
		Si numero2 != 0 Entonces
			Escribir numero1, " / ", numero2, " = ", division
		SiNo
			Escribir mensajeError
		FinSi
		
		// solicito la opcion para seguir operando o no
		Escribir "Seguir operando? Dejar en blanco para seguir. Escribir salir para terminar"
		Leer opcionSeguir
		opcionSeguir <- Mayusculas(opcionSeguir)
		
	FinMientras
	


FinAlgoritmo
