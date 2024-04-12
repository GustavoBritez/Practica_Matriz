Algoritmo MP_3
	
	
//	Desarrollar un algoritmo que inicialice una matriz cuadrada de 10x10 con valores aleatorios entre 0 y 50,
//	la imprima por pantalla y le pida al usuario 5 valores a buscar en la matriz, los cuales deberá cargar en un
//	arreglo.
//	El algoritmo deberá recorrer la matriz y buscar cada uno de los números que indicó el usuario, completando
//	un nuevo vector de valores lógicos, de igual tamaño que el vector de números a buscar, indicando
//	Verdadero o Falso si cada numero buscado es encontrado en la matriz.
	Definir Matriz, Arreglo Como Entero;
	Definir Fila, Columna Como Entero;
	Definir i,j, n, k Como Entero;
	Definir logic Como Logico;
	
	///Asignamos valores a las variables
	Fila <- 10;
	Columna <- 10;
	k <- 0;
	Dimensionar Matriz[Fila,Columna];
	Dimensionar Arreglo[5];
	Dimensionar logic[5];
	
	Para i <- 0 Hasta Fila -1 Con Paso 1 Hacer
		Para j <- 0 Hasta Columna - 1 Con Paso 1 Hacer
			Matriz[i,j] <- Aleatorio(0,50);
			Escribir Sin Saltar " ", Matriz[i,j];
		FinPara
		Escribir " ";
	FinPara
	
	Escribir " ";
	Escribir " Ingrese 5 numeros a buscar en la Matriz ";
	Para i <- 0 Hasta 5 - 1 Con Paso 1 Hacer
		Arreglo[i] <- 0;	
	FinPara
	Para i <- 0 Hasta 5 - 1 Con Paso 1 Hacer
		Leer n;
		Arreglo[i] <- n;	
	FinPara
	
	/// Buscamos el numero del usuario colocado en el vector a la matriz
	Mientras k <> 5 Hacer
		Para i <- 0 Hasta Fila -1 Con Paso 1 Hacer
			Para j <- 0 Hasta Columna - 1 Con Paso 1 Hacer
				
				Si Matriz[i,j] == Arreglo[k] entonces
					
					logic[k] <- Verdadero;
					i <- Fila - 1;
					j <- Columna - 1;
				SiNo
					logic[k] <- Falso;
				FinSi
			FinPara
			
		FinPara
		k <- k + 1;
	FinMientras
	
	Para i <- 0 Hasta 5 - 1 Con Paso 1 Hacer
		Escribir Sin Saltar " ", logic[i];
	FinPara
	Escribir " ";
FinAlgoritmo
