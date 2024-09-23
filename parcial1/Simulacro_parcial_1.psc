Algoritmo Simulacro_parcial_1
	
	// Ingresamos cantidad de perros en un día 
	
	// Definimos variables
	Definir CANTIDAD_PERROS_PASEADOS, CANT_MAX_KM, contadorDePerros Como Entero
	Definir km, promedioGral Como Real
	Definir valorMaxKm, valorMinKm Como Real
	Definir nombre, perroMaxKm, perroMinKm Como Cadena
	// Definir acumuladores y contados
	Definir acumKm, contadorGral, contadorCuatoKm Como Entero
	
	CANTIDAD_PERROS_PASEADOS = 5
	CANT_MAX_KM = 4
	km = 0
	nombre = ""
	contadorDePerros = 0
	valorMaxKm = -9999999
	valorMinKm = 9999999
	acumKm = 0 
	contadorGral= 0
	contadorCuatoKm = 0
	// 2- El programa debe terminar 
	// cuando no haya más perros por agregar.

	Mientras contadorDePerros < CANTIDAD_PERROS_PASEADOS Hacer
		Escribir "Ingresa el ", contadorDePerros + 1, " perro: "
		Escribir "Decime el nombre: "
		Leer nombre
		nombre = validarTexto(nombre)
		Escribir "Cuantos km caminó?: "
		Leer km
		km = validarKm(km)
		// 3- Max y Min de km
		// Ha caminado más kilómetros
		Si km > valorMaxKm Entonces
			valorMaxKm = km
			perroMaxKm = nombre
		FinSi
		// Ha caminado más kilómetros
		Si km < valorMinKm Entonces
			valorMinKm = km
			perroMinKm = nombre
		FinSi
		acumKm = acumKm + km
		contadorGral = contadorGral + 1
		
		// 5- Calcular cuántos perros caminaron más de 4 km.
		Si km > CANT_MAX_KM Entonces
			contadorCuatoKm = contadorCuatoKm + 1
		FinSi
		
		// incrementamos contadorDePerros
		contadorDePerros = contadorDePerros + 1
		
	Fin Mientras
	
	// Hacemos el analisis
	// 4- Calcular el promedio de kilómetros caminados.
	promedioGral = (acumKm / contadorGral)
	Escribir "Promedio de Kms caminados es: ", promedioGral
	// 5- Mostramos cuantos caminaron más de 4 km.
	Escribir contadorCuatoKm," caminaron mas de ", CANT_MAX_KM," kms"
	// 6- Mostrar un mensaje motivacional
	
	Si promedioGral < 2 Entonces
		Escribir "Debes caminar más."
	SiNo
		Si promedioGral > 2 Y promedioGral < 5 Entonces
			Escribir "Buen trabajo."
		SiNo
			Escribir "¡Excelente rendimiento!"

		FinSi
	FinSi

	
FinAlgoritmo


// 1- Declaramos funciones
// validamos el nombre y 
// la cantidad de kilómetros.

Funcion retorno <- validarKm (km)
	
	Definir retorno Como Real
	
	Mientras km < 1 O km > 10 Hacer
		Escribir "Los KM son invalidos: "
		Leer km
	FinMientras
	
	retorno <- km
FinFuncion





Funcion retorno <- validarTexto (nombre)
	
	Definir retorno Como Cadena
	
	Mientras Longitud(nombre) == 0 Hacer
		Escribir "El nombre no puede ser vacío: "
		Leer nombre
	FinMientras
	
	retorno <- nombre
FinFuncion
