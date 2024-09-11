// funcion que recibe una cadena de caracteres y verifica si está vácía no no
Funcion res <- validarNombre(nombre)
	Definir res Como Logico
	res <- Verdadero
	Si nombre = "" Entonces
		res <- Falso
	FinSi
FinFuncion

Funcion escribirNombreVacio
	Escribir "Error. Nombre vacío"
	Escribir "Escribir nombre otra vez"
FinFuncion

// Función para validad que los montos no sean menor o igual a cero
Funcion res <- validarMonto(monto)
	Definir res Como Logico
	res <- Verdadero
	Si monto <= 0 Entonces
		res <- Falso
	FinSi
FinFuncion

Funcion escribirMontoIncorrecto
	Escribir "Error. El monto no puede ser menor a cero"
	Escribir "Ingresar un monto mayor a cero"
FinFuncion


Algoritmo ejerc3
	
//	3_ Realizar un programa que permita ingresar lo siguiente:
//	- Ingresar el nombre de tres personas y su aporte en valor decimal
//	- Calcular el valor total aportado
//	-  Calcular el porcentaje aportado de cada persona (indicando nombre y porcentaje)
	
	// Declaro las variables
	Definir nombrePersona1, nombrePersona2, nombrePersona3 Como Caracter
	Definir aportePersona1, aportePersona2, aportePersona3, aporteTotal Como Entero
	Definir porcenAportePersona1, porcenAportePersona2, porcenAportePersona3 Como Real 
	
	// Incializo las siguientes variables
	aporteTotal <- 0
	
	// Entrada: solicito datos de la persona 1
	Escribir "Escribir el nombre de la persona 1"
	Leer nombrePersona1
	// valido el nombre persona 1
	Mientras NO(validarNombre(nombrePersona1)) Hacer
		escribirNombreVacio	
		Leer nombrePersona1
	FinMientras
	// solicito monto persona 1
	Escribir "Ingresar el monto del aporte de ", nombrePersona1
	Leer aportePersona1
	// valido monto persona 1
	Mientras NO(validarMonto(aportePersona1)) Hacer
		escribirMontoIncorrecto
		Leer aportePersona1
	FinMientras
	// sumo aporte persona 1 al total
	aporteTotal <- aporteTotal + aportePersona1
	
	// solicito datos persona 2
	Escribir "Escribir el nombre de la persona 2"
	Leer nombrePersona2
	// valido nombre persona 2
	Mientras NO(validarNombre(nombrePersona2)) Hacer
		escribirNombreVacio	
		Leer nombrePersona2
	FinMientras
	// valido monto persona 2
	Escribir "Ingresar el monto del aporte de ", nombrePersona2
	Leer aportePersona2
	Mientras NO(validarMonto(aportePersona2)) Hacer
		escribirMontoIncorrecto
		Leer aportePersona2
	FinMientras
	// sumo aporte persona 2 al total
	aporteTotal <- aporteTotal + aportePersona2
	
	// solicito datos persona 3
	Escribir "Escribir el nombre de la persona 3"
	Leer nombrePersona3
	// valido nombre persona 3
	Mientras NO(validarNombre(nombrePersona3)) Hacer
		escribirNombreVacio	
		Leer nombrePersona3
	FinMientras
	// valido monto persona 3
	Escribir "Ingresar el monto del aporte de ", nombrePersona3
	Leer aportePersona3
	Mientras NO(validarMonto(aportePersona3)) Hacer
		escribirMontoIncorrecto
		Leer aportePersona3
	FinMientras
	// sumo aporte persona 3 al total
	aporteTotal <- aporteTotal + aportePersona3
	
	
	// Proceso: hago los calculos que falta
	porcenAportePersona1 <- aportePersona1 / aporteTotal * 100
	porcenAportePersona2 <- aportePersona2 / aporteTotal * 100
	porcenAportePersona3 <- aportePersona3 / aporteTotal * 100
	
	// Salida: informo lo solicitado
	Escribir "El valor total aportado es de: ", aporteTotal
	Escribir nombrePersona1, " aportó ", porcenAportePersona1, "%"
	Escribir nombrePersona2, " aportó ", porcenAportePersona2, "%"
	Escribir nombrePersona3, " aportó ", porcenAportePersona3, "%"
	
	
FinAlgoritmo
