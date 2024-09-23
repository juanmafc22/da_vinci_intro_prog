



// en esta función solicito el nombre y lo valido
Funcion nombre <- solicitarNombre
	Definir nombre Como Caracter
	Escribir "Ingrese su nombre: "
	Leer nombre
	Mientras nombre == ""  Hacer
		Escribir "Error. El nombre no puedo quedar vacío. Ingrese su nombre: "
		Leer nombre
	FinMientras
	nombre <- Mayusculas(nombre)
FinFuncion

// en esta función solicito la edad y la valido
Funcion edad <- solicitarEdad
	Definir LIMITE_EDAD_INFERIOR, LIMITE_EDAD_SUPERIOR Como Entero
	Definir edad Como Entero
	LIMITE_EDAD_INFERIOR <- 0
	LIMITE_EDAD_SUPERIOR <- 133
	Escribir "Ingrese su edad: "
	Leer edad
	Mientras (edad <= LIMITE_EDAD_INFERIOR || edad > LIMITE_EDAD_SUPERIOR) Hacer
		Escribir "Error. Edad no válida. Ingrese su edad: "
		Leer edad
	FinMientras
FinFuncion

// imprimo en pantalla las opciones de consulta

Funcion sintoma <- motivoDeConsulta
	Definir sintoma Como Cadena
	Escribir "Ingresar motivo de la consulta: 1 (Fiebre), 2 (Dolor de cabeza), 3 (Otro)"
	Leer sintoma
FinFuncion

Funcion motivoConsultaValido <- validarMotivoConsulta(string)
	
	Mientras expresion_logica Hacer
		secuencia_de_acciones
	FinMientras
	
FinFuncion






Algoritmo parcial1IntroduccionALaProgramacion
	
	// Defino las CONSTANTES
	
	Definir SINTOMA_FIEBRE, SINTOMA_DOLOR_CABEZA, SINTOMA_OTRO, INSTRUCCION_TERMINAR Como Caracter

	// Defino las varaibles
	Definir nombre, motivoConsulta Como Caracter
	Definir edad, contadorPacientes, sumaEdades Como Entero
	Definir promedioEdad Como Real
	Definir banderaPrimerPaciente, seguirOperando Como Logico
	
	
	// Les doy valor a las CONSTANTES e inicializo algunas de las variables
	
	SINTOMA_FIEBRE <- "FIEBRE"
	SINTOMA_DOLOR_CABEZA <- "DOLOR DE CABEZA"
	SINTOMA_OTRO <- "OTRO"
	INSTRUCCION_TERMINAR <- "TERMINAR"
	sumaEdades <- 0
	contadorPacientes <- 0
	nombre <- ""
	banderaPrimerPaciente <- Verdadero
	seguirOperando <- Verdadero
	
	Escribir "Bienvenido/a a la clínica del Dr. Algoritmo Operador"
	Escribir "Usted es nuestro primer paciente hoy"
	Escribir ""
	
	Mientras (banderaPrimerPaciente && seguirOperando) Hacer
		
		// le solicito el nombre al paniente
		nombre <- solicitarNombre()
		Escribir "El Nombre: ", nombre
		
		// le solicito la edad al paciente
		edad <- solicitarEdad
		Escribir "La edad: ", edad
		
		// le solicito el motivo de consulta
		motivoConsulta <- motivoDeConsulta()
		Escribir "El motivo de la consulta: ", motivoConsulta
		
		sumaEdades <- sumaEdades + edad
		
		
		
		
	FinMientras
	
//	nombre <- solicitarNombre()
//	Escribir "El nombre ingresado es ", nombre
//	
//	edad <- solicitarEdad()
//	Escribir "La edad es ", edad
	
	
	
FinAlgoritmo
