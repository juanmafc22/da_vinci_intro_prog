//  5_ Existen dos reglas que identifican dos conjuntos de valores:
//	(a) El numero es de un solo digito
//	(b) El numero es impar
//	A partir de estas reglas, realizá un programa que permita ingresar un numero entero. El programa deberá
//	asignar el valor a las siguientes variables booleanas
//	- esDeUnSoloDigito
//	- esImpar
//	- estaEnAmbosGrupos
//	- noEstaEnNingunGrupo
//	El valor es Verdadero o Falso, según corresponda. Al terminar el programa, notificar el numero
//	ingresado y el estado de las cuatro variables.

Funcion  res <- verificarSoloUnDigito(num)
	Definir res Como Logico
	res <- Falso
	Si (num >= -9 Y num <= 9) Entonces
		res <- Verdadero
	FinSi
FinFuncion

Funcion res <- verificarImpar(num)
	Definir res Como Logico
	
	Si (num != 0) Entonces
		Si (num MOD 2 = 0) Entonces
			res <- Falso
		SiNo
			res <- Verdadero
		FinSi
	SiNo
		res <- Falso
	FinSi

FinFuncion

Algoritmo ejerc5
	
	// Declarar las variables
	Definir numEsSoloUnDigito, numEsImpar Como Logico
	Definir numero Como Entero
	
	// Entrada. Solicitar los dos numeros
	Escribir "Ingresar el numero"
	Leer numero
	
	numEsSoloUnDigito <- verificarSoloUnDigito(numero)
	numEsImpar <- verificarImpar(numero)
	
	Escribir "Es solo un digoto: ", numEsSoloUnDigito
	Escribir "Es impar: ", numEsImpar
	
	Si (numEsImpar Y numEsImpar) Entonces
		Escribir "Es solo de un digito Y es impar: VERDADERO"
	SiNo
		Escribir "Es solo de un digito Y es impar: FALSO"
	FinSi
	
	Si NO(numEsImpar Y numEsImpar) Entonces
		Escribir "No es solo de un digito Y tampoco es impar: VERDADERO"
	SiNo
		Escribir "No es solo de un digito Y tampoco es impar: FALSO"
	FinSi
	
	
	
FinAlgoritmo
