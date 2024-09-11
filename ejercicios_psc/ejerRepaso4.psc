// Realiza un programa que permita ingresar la cantidad de
// inscriptos a una conferencia y la cantidad de asientos disponibles
// en el auditorio. Debes indicar si alcanzan los asientos, Si los
// asientos no alcanzaran indicar cuántos faltan para que todos los
// inscriptos puedan sentarse.

Algoritmo ejerRepaso4
	
	// Declaro las variables
	Definir cantInscriptos, capacidadAuditorio, asientosLibres Como Entero
	
	// Entrada. Pido los datos
	Escribir "Ingresar personas inscriptas en la conferencia"
	Leer cantInscriptos
	Escribir "Ingresar capacidad del auditorio"
	Leer capacidadAuditorio
	
	// Proceso. Calculo si hay suficientes asientos
	asientosLibres <- capacidadAuditorio - cantInscriptos
	
	Si asientosLibres >= 0 Entonces
		Escribir ""
		Escribir "Hay suficientes asientos"
		Escribir "Capacidad del auditorio: ", capacidadAuditorio
		Escribir "Personas inscriptas: ", cantInscriptos
	SiNo
		Escribir ""
		Escribir "No hay suficientes asientos"
		Escribir "Capacidad del auditorio: ", capacidadAuditorio
		Escribir "Personas inscriptas: ", cantInscriptos
		Escribir "Faltan ", asientosLibres * (-1), " asientos"
	FinSi
	
FinAlgoritmo
