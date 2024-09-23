// PARCIAL NUM 1
// Introducción a la programación
// Profesor: Fernando Valls
// Alumno: Juan Manuel Fernández Casenave
// Comisión: ACN1AV
// -------
// Consignas
// Un consultorio médico recibe pacientes y registra las consultas realizadas.
// Se requiere que el estudiante desarrolle un programa en pseudocódigo que
// permita:
// 1. El programa debe terminar cuando no haya más pacientes por agregar.
// 2. Ingresar el nombre del paciente, su edad y el síntoma principal por el cual consultó.
// 3. Determinar la cantidad total de pacientes que han consultado por fiebre y por dolor de cabeza.
// 4. Calcular el promedio de edad de los pacientes que han sido atendidos
// 5. Mostrar el nombre, edad y síntoma del paciente más jóven.
// 6. Mostrar recomendaciones basadas en el promedio de consultas:
// - Si el síntoma es fiebre, mostrar: "Consultar sobre posibles infecciones."
// - Si el síntoma es dolor de cabeza, mostrar: "Posible estrés o migraña."
//	- Si el síntoma es otro, mostrar: "Síntoma no identificado, consultar más detalles."
// 7. Validar todos los input


// hacer es esta modificación final
// - quitar la opcion de ambos fiebre y dolor de cabeza
// imprimir resultado fiebre y dolor de cabeza, haciendo la sumatoria de ambas cosas


// Funcion para validar el nombre, que no sea string vacío
Funcion resultado <- validarNombre(string) 
	Definir resultado Como Logico
	resultado <- Falso
	Si (string != "") Entonces
		resultado <- Verdadero
	FinSi
FinFuncion

// Funcion para validar la edad, entre 1 y 133 años
Funcion resultado <- validarEdad(edad)
	Definir resultado Como Logico
	Definir EDAD_MINIMA, EDAD_MAXIMA Como Entero
	EDAD_MINIMA <- 1
	EDAD_MAXIMA <- 134
	resultado <- Falso
	Si (edad >= EDAD_MINIMA && edad <= EDAD_MAXIMA) Entonces
		resultado <- Verdadero
	FinSi
FinFuncion

// Funcion para validar el motivo de la consulta, se puede entre 1 y 3
Funcion resultado <- validarMotivoConsulta(opcion)
	Definir resultado Como Logico
	Definir RANGO_MIN, RANGO_MAX Como Entero
	RANGO_MIN <- 1
	RANGO_MAX <- 3
	resultado <- Falso
	Si (opcion >= RANGO_MIN && opcion <= RANGO_MAX) Entonces
		resultado <- Verdadero
	FinSi
FinFuncion

// Funcion para escribir por pantalla las opciones de consulta
// no retorna nada, solo imprime por panalla
Funcion escribirOpcionesConsulta
	Escribir "Ingrese el motivo de su consulta."
	Escribir "Ingrese 1: Fiebre"
	Escribir "Ingrese 2: Dolor de cabeza"
	Escribir "Ingrese 3: Por otros síntomas"
FinFuncion

// Funcion para validar la opcion de salida del programa
// si se ingresa cualquier cosa que NO sea "SALIR" ó se presiona
// la tecla enter devuelve un booleano que se siga pidiendo solo
// esas dos opciones
Funcion resultado <- validarSeguirOperando(string)
	Definir resultado Como Logico
	resultado <- Falso
	string <- Mayusculas(string)
	Si (string == "" || string == "SALIR") Entonces
		resultado <- Verdadero
	FinSi
FinFuncion

// Funcion para darle formato al nombre convierto todo a Upper Case
// para darle formato uniforme a los nombres
Funcion resultado <- darFormatoANombre(string)
	Definir resultado Como Caracter
	resultado <- Mayusculas(string)
FinFuncion


Algoritmo parcial1JuanManuelFernandezCasenave
	
	// Defino variables
	Definir nombre, opcionSeguirOperando, infoPacienteMasJoven, sintoma Como Caracter
	Definir edad, motivoConsulta, totalEdad, edadPacMasJoven, sumaPacFiebreYMigrania Como Entero
	Definir contadorPacientes, contadorPacFiebre, contadorPacMigrania, contadorPacOtros Como Entero
	Definir seguirOperando, banderaPrimerPaciente Como Logico
	Definir promedioEdad Como Real
	
	// Inicializo algunas variables
	infoPacienteMasJoven <- ""				// string vacío para almacenar la info del paciente(s) más jóven(es) en caso que hay más de uno con la misma edad
	seguirOperando <- Verdadero				// booleano para verificar si se sigue operando
	banderaPrimerPaciente <- Verdadero		// booleano para que si o si guarde la info del 1er paciente como el más jóven, luego se comparan las edades
	contadorPacientes <- 0					// contador de pacientes
	contadorPacFiebre <- 0					// para el switch 1: pacientes que tienen fiebre
	contadorPacMigrania <- 0				// para el switch 2: pacientes que tienen dolor de cabeza
	contadorPacOtros <- 0					// para el switch 3: pacientes son sintomas no identificados
	totalEdad <- 0							// totalizados de edades
	sumaPacFiebreYMigrania <- 0				// variable para sumar los pacientes que tuvieron fiebre y los que tuvieron dolor de cabeza
	
	Escribir ""
	Escribir "Bienvenido/a a la clínica del Dr. Algoritmo Operador!"
	Escribir "Aquí agarramos el bisturí y lo operamos con alegría!"
	Escribir ""
	
	Mientras seguirOperando Hacer
		
		// inicializo sintoma adentro del while y al principio de todo para que se resetee con cada vuelta
		sintoma <- ""
		
		// comienzo el conteo de pacientes
		contadorPacientes <- contadorPacientes + 1
		
		// solicito el nombre
		Escribir "Ingrese el nombre del paciente num ", contadorPacientes, ":"
		Leer nombre
		
		// valido el nombre con un while y la fx validarNombre
		Mientras !(validarNombre(nombre)) Hacer
			Escribir "Error. Ingrese un nombre válido (solo se aceptan cadenas de caracteres): "
			Leer nombre
		FinMientras
		
		// le soy formato al nombre con la fx darFormatoANombre
		nombre <- darFormatoANombre(nombre)
		
		// solicito la edad del paciente
		Escribir "Ingrese la edad de ", nombre, ": "
		Leer edad
		
		// valido la edad con una while y la fx validarEdad
		Mientras  !(validarEdad(edad)) Hacer
			Escribir "Error. Ingrese una edad válida (números entre 1 y 133 años): "
			Leer edad
		FinMientras
		
		// suma las edades
		totalEdad <- totalEdad + edad
		
		// imprimo por pantalla las opciones de consulta
		escribirOpcionesConsulta()
		Leer motivoConsulta
		
		// valido le motivo de cosulta con un while y la fx validarMotivoConsulta
		Mientras !(validarMotivoConsulta(motivoConsulta)) Hacer
			Escribir "Error. Solo escribir el nùmero 1, 2 o 3"
			escribirOpcionesConsulta()
			Leer motivoConsulta
		FinMientras
		
		// Implemento un Switch para según la opción elegida:
		// 1. imprimo por pantalla la recomendación
		// 2. contatilizo los pacientes según condición
		Segun motivoConsulta Hacer
			1:
				Escribir "RECOMENDACIÓN: Consultar sobre posibles infecciones"
				contadorPacFiebre <- contadorPacFiebre + 1
				sintoma <- "fiebre"
			2:
				Escribir "RECOMENDACIÓN: Posible estrés o migraña"
				contadorPacMigrania <- contadorPacMigrania + 1
				sintoma <- "dolor de cabeza"
			3:
				Escribir "RECOMENDACIÓN: Síntoma no identificado, consultar más detalles."
				contadorPacOtros <- contadorPacOtros + 1
				sintoma <- "síntomas no identificados"
			De Otro Modo:
		FinSegun
		
		// En la 1ra vuelta con una bandera automaticamente asigno el 1er paciente ingresaso como el más jóven y 
		// guardo su info de síntoma. Después de la 1ra vuelta por bandera comparo edades, asigno valor de menor
		// edad y agrego listado de condiciones a en caso que haya más de un paciente con la misma edad
		Si banderaPrimerPaciente Entonces
			edadPacMasJoven <- edad
			infoPacienteMasJoven <- " | " + nombre + " con " + sintoma
			banderaPrimerPaciente <- Falso
		SiNo
			Si edad < edadPacMasJoven Entonces
				edadPacMasJoven <- edad
				infoPacienteMasJoven <- " | " + nombre + " con " + sintoma
			SiNo
				Si edad == edadPacMasJoven Entonces
					edadPacMasJoven <- edad
					infoPacienteMasJoven <- infoPacienteMasJoven + " | " + nombre + " con " + sintoma
				FinSi
			FinSi
		FinSi
		
		// Solicito que ingresen SALIR o que solo presionen ENTER
		Escribir ""
		Escribir "Escribir SALIR para terminar o presionar Enter para cargar otro paciente"
		Leer opcionSeguirOperando
		
		// Valido que hayan ingresado SOLAMENTE "SALIR" o que hayan presionado enter
		Mientras !(validarSeguirOperando(opcionSeguirOperando)) Hacer
			Escribir "Error. Solo escribir SALIR para terminar o presionar Enter para cargar otro paciente"
			Leer opcionSeguirOperando
		FinMientras
		
		// Si me presionan SALIR cambio el valor de la bandera seguirOperando para que NO entre más en el WHILE
		opcionSeguirOperando <- Mayusculas(opcionSeguirOperando)
		Si opcionSeguirOperando == "SALIR" Entonces
			seguirOperando <- Falso
		FinSi
		
		// Imprimo una línea vacía solo a efectos visuales, que los pacientes me queden separados con una línea
		// en blanco uno del otro
		Escribir ""
		
	FinMientras
	
	// Calculo el promedio de las edades
	promedioEdad <- totalEdad / contadorPacientes
	
	// Calculo la suma de pacientes con fiebre y con dolor de cabeza
	sumaPacFiebreYMigrania <- contadorPacFiebre + contadorPacMigrania
	
	// Imprimo por pantalla las consignas del parcial
	Escribir ""
	Escribir "DEVUELVO LOS RESULTADOS SEGÚN LAS CONSIGNAS DEL PARCIAL"
	Escribir "(las recomendaciones se escribieron con cada consulta)"
	Escribir sumaPacFiebreYMigrania, " es la suma de pacientes que consultaron por fiebre y por dolor de cabeza: ", contadorPacFiebre, " (fiebre) + ", contadorPacMigrania, " (dolor de cabeza" 
	Escribir promedioEdad, " años es el promedio de edad de los pacientes"
	Escribir edadPacMasJoven, " años es la edad del paciente(s) con menor edad", infoPacienteMasJoven
	
	// Imprimo por pantalla todos los datos ingresados para validar los datos
	Escribir ""
	Escribir ""
	Escribir "DEVUELVO TODOS LOS DATOS para validar datos"
	Escribir contadorPacFiebre, " pacientes con fiebre." 
	Escribir contadorPacMigrania, " pacientes con dolor de cabeza."
	Escribir sumaPacFiebreYMigrania, " es la suma de los pacientes con fiebre y con dolor de cabeza"
	Escribir contadorPacOtros, " pacinetes con otras dolencias" 
	Escribir contadorPacientes, " TOTAL CANT DE PACIENTES"
	Escribir promedioEdad, " el promedio de edad" 
	Escribir edadPacMasJoven, " edad del paciente más joven"
	Escribir "La información del paciente(s) con menor edad", infoPacienteMasJoven

	
FinAlgoritmo
// Fin parcial
