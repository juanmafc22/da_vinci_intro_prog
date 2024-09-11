// 4_ Debe crear un programa que permita ingresar una edad (entre 1 y 99 a�os) y un g�nero (?F?, ?M?, ?X?).
// En caso de ingrsar valores err�neos (edad fuera de rango, o generos inexistentes), informar de esa
// situaci�n mostrando un mensaje y terminar el programa. Si todos los datos fueron bien ingresados, el
//	programa debe ser capas de indicar, sabiendo que las mujeres se jubilan a los 60 a�os o mas, los hombres
//	con 65 a�os o mas, para los no binarios establecemos un promedio de ambas edades.

Funcion escribirMensajeError
	Escribir "Error. Se sale del programa"
FinFuncion

Funcion puedeJubilarse
	Escribir "Puede Jubilarse"
FinFuncion

Funcion NoPuedeJubilarse
	Escribir "No puede Jubilarse"
FinFuncion

Funcion res <- validarEdad (edad)
	Definir res Como Logico
	res <- Falso
	Si (edad >= 1 Y edad <= 99) Entonces
		res <- Verdadero
	FinSi
FinFuncion

Funcion res <- validarGenero(genero)
	Definir res Como Logico
	res <- Falso
	Si (genero = "M" O genero = "F" O genero ="X") Entonces
		res <- Verdadero
	FinSi
FinFuncion


Algoritmo ejerc4
	
	// Declaro las variables
	Definir edad Como Entero
	Definir genero Como Caracter
	Definir edadValida, generoValido Como Logico
	
	Escribir "Ingresar edad"
	Leer edad
	edadValida <- validarEdad(edad)
	
	Escribir "Ingresar g�nero"
	Leer genero
	genero <- Mayusculas(genero)
	generoValido <- validarGenero(genero)
	
	Si edadValida Y generoValido Entonces
		Si genero = "M" Entonces
			Si edad >= 65 Entonces
				puedeJubilarse
			SiNo
				NoPuedeJubilarse
			FinSi
		SiNo
			Si genero = "F" Entonces
				Si edad >= 60 Entonces
					puedeJubilarse
				SiNo
					NoPuedeJubilarse
				FinSi
			SiNo
				Si edad >= 62 Entonces
					puedeJubilarse
				SiNo
					NoPuedeJubilarse
				FinSi
			FinSi
		FinSi
	SiNo
		Escribir "Info no validas"
	FinSi
	
	
	
FinAlgoritmo
