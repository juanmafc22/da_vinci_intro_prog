// Para entrar a la montaña rusa interno en las alturas se requiere
// tener al menos 7 años y medir más de 1,50 metros. Completa el
// siguiente cuadro a mano según los requisitos y luego escribí el
// programa que permita, ejecutándolo cada vez para cada niño y
// según las edades y estaturas ingresadas por el usuario, obtener
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
