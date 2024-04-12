Algoritmo MP_1
//	Desarrollar un algoritmo que inicialice una matriz de 4 filas y 5 columnas con valores aleatorios entre 0 y
//	10 y defina dos vectores: paresEnFilas, para guardar la cantidad de números pares en cada fila, e
//	imparesEnColumnas, para guardar la cantidad de números impares en cada columna.
//		- Imprimir por pantalla la matriz y los dos vectores cargados.
	
	
	Definir Matriz Como Entero;
	Definir Fila,Columna Como Entero;
	Definir i, j Como Entero;
	Definir vectorFila , vectorColumna Como Entero;

	///Asignamos valores a las variables
	Fila <- 4;
	Columna <- 5;
	Dimension Matriz[ Fila, Columna];
	Dimension vectorColumna[Columna]; /// <- Aqui guardaremos los numeros impares
	Dimension vectorFila[Fila]; ///  <- Aqui guardaremos los numeros pares
	
	/// Cargamos con aleatorios del 0 al 9 la matriz y la mostramos
	Para i <- 0 Hasta Fila - 1 Con Paso 1 Hacer
		
		Para j <- 0 Hasta Columna - 1 Con Paso 1 Hacer
			
			Matriz[i,j] <- Aleatorio( 0,9 );
			Escribir Sin Saltar " ", Matriz[i,j];
		FinPara
		Escribir " ";
	FinPara
	
	///Inicializamos el vector Columna y vector Fila, es una buena costumbre para no tener errores basura
	Para i <- 0 Hasta Fila - 1 Con Paso 1 Hacer
		vectorColumna[i] <- 0;
		vectorFila[i] <- 0;
	FinPara
	
	/// Contamos los numeros Pares e Impares, luego los cargamos en dos vectores
	Para i <- 0 Hasta Fila - 1 Con Paso 1 Hacer
		
		Para j <- 0 Hasta Columna - 1 Con Paso 1 Hacer
			
			Si (Matriz[i,j] Mod 2 == 0) y ( Matriz[i,j] <> 0) Entonces
				vectorFila[i] <- vectorFila[i] + 1;
			FinSi
			Si Matriz[i,j] Mod 2 <> 0 Entonces
				vectorColumna[i] <- vectorColumna[i] + 1;
			FinSi
		FinPara
		
	FinPara

	
	/// Mostramos lo que nos pide
	Para i <- 0 Hasta Fila - 1 Con Paso 1 Hacer
		Escribir " VectorPares[",i+1,"]",vectorFila[i];
	FinPara
	Para i <- 0 Hasta Fila - 1 Con Paso 1 Hacer
		Escribir " Vectorimpares[",i+1,"]",vectorColumna[i];
	FinPara

	
	
FinAlgoritmo
