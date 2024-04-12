Algoritmo MP_2
//	Desarrollar un algoritmo que inicialice una matriz de 2 filas y 10 columnas con valores aleatorios entre 0 y
//	10 y revise si el valor de la fila 1 coincide con el valor de la fila 2 (en la misma columna). En caso de que
//	coincidan, setear ambos valores en 0. Imprimir la matriz luego de la revisión.
	Definir Matriz Como Entero;
	Definir Fila, Columna Como Entero;
	Definir i,j, n1,n2 Como Entero;
	
	///Asignamos valores a las variables
	Fila <- 2;
	Columna <- 10;
	Dimensionar Matriz[Fila,Columna];
	
	Para i <- 0 Hasta Fila -1 Con Paso 1 Hacer
		Para j <- 0 Hasta Columna - 1 Con Paso 1 Hacer
			Matriz[i,j] <- Aleatorio(0,10);
			Escribir Sin Saltar " ", Matriz[i,j];
		FinPara
		Escribir " ";
	FinPara
	
	Escribir " --- Seteamos lo valores iguales --- ";
	
	Para i <- 0 Hasta Columna - 1 Con Paso 1 Hacer
		
		Si Matriz[0,i] == Matriz[1,i] Entonces
			Matriz[0,i] <- 0;
			Matriz[1,i] <- 0;
		FinSi
	FinPara
	
	/// Mostramos la matriz

	Para i <- 0 Hasta Fila -1 Con Paso 1 Hacer
		Para j <- 0 Hasta Columna - 1 Con Paso 1 Hacer
			Escribir Sin Saltar " ", Matriz[i,j];
		FinPara
		Escribir " ";
	FinPara
FinAlgoritmo
