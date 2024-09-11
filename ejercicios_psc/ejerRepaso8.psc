// Para entrar a la monta�a rusa interno en las alturas se requiere
// tener al menos 7 a�os y medir m�s de 1,50 metros. Completa el
// siguiente cuadro a mano seg�n los requisitos y luego escrib� el
// programa que permita, ejecut�ndolo cada vez para cada ni�o y
// seg�n las edades y estaturas ingresadas por el usuario, obtener
// los mismos resultados para los siguientes datos:


Funcion res <- validarEntrada (edad, altura)
	Definir res Como Logico
	res <- Falso
	Si (edad >= 7 Y altura > 1.5)  Entonces
		res <- Verdadero
	FinSi
FinFuncion


Algoritmo ejerRepaso8
	
	Definir edad, iterador Como Entero
	Definir altura Como Real
	Definir nombre Como Caracter
	Definir siPuedeEntrar Como Logico
	
	Para iterador<-1 Hasta 4 Hacer
		
		Escribir "Ingresar el nombre"
		Leer nombre
		Escribir "Ingresar la edad de ", nombre
		Leer edad
		Escribir "Ahora ingresar la altura de ", nombre
		Leer altura
		
		Escribir "Es ", validarEntrada(edad, altura), " que ", nombre, " pueda ingresar"
		
	FinPara
	
	
FinAlgoritmo
