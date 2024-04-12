Algoritmo MP_4
	
	Definir Vector, Matriz Como Entero;
	Definir Fila, Fila2, Columna Como Entero;
	Definir i ,j ,k , pivot Como Entero;
	
	/// Asiganmos valor a las variables
	k <- 0 ;
	Fila <- 25;
	Fila2 <- 5;
	Columna <- 5;
	Dimensionar Vector[Fila];
	Dimensionar Matriz[Fila2,Columna];
	/// Cargamos Matriz
	Escribir " ---- Matriz Cargada ----- ";
	Para i <- 0 Hasta Fila2 - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta  Columna - 1 Con Paso 1 Hacer
			Matriz[i,j] <- Aleatorio(1,9);
			Escribir sin saltar " ", Matriz[i,j];
		FinPara
		Escribir " ";
	FinPara
	Escribir " ";
	k <- 0;
	Escribir " ----- Transformacion de Matriz a Vector ---- ";
	Para i <- 0 Hasta Fila2 - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta Columna - 1 Con Paso 1 Hacer
			Vector[k] <- Matriz[i,j];
			k <- k + 1;
		FinPara
	FinPara
	Escribir " -----Vector Desordenado---- ";
	Para i <- 0 Hasta Fila - 1 Con Paso 1 Hacer
		Escribir Sin Saltar " ", Vector[i];
	FinPara
	/// Ordenar
	Para i <- 0 Hasta Fila - 1 Con Paso 1 Hacer
		
		Para j <- i + 1 Hasta Fila - 1 Con Paso 1 Hacer
			
			Si Vector[i] > Vector[j] Entonces
				
				pivot <- Vector[i];
				Vector[i] <- Vector[j];
				Vector[j] <- pivot;
				
			FinSi
			
		FinPara
		
	FinPara
	Escribir " ";
	Escribir " -----Vector Ordenado---- ";
	Para i <- 0 Hasta Fila - 1 Con Paso 1 Hacer
		Escribir Sin Saltar " ", Vector[i];
	FinPara
	Escribir " ";
	
	k <- 0;
	/// Pasaje de vector a Matriz
	Escribir " ---- Matriz ordenada ---";
	Para i <- 0 Hasta Fila2 - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta Columna - 1 Con Paso 1 Hacer
			
			Matriz[i,j] <- Vector[k];
			k <- k + 1;
			Escribir sin saltar " ", Matriz[i,j];
		FinPara
		Escribir " ";
	FinPara
	
FinAlgoritmo
