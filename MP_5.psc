Algoritmo MP_5
	
	Definir Matriz Como  Caracter;
	Definir Fila, Columna, long Como Entero; 
	Definir i, j, k, m Como Entero;
	Definir vectorLetras, palabra Como Caracter;
	Definir logic Como Logico;
	
	/// Asignamos valores a las variables
	
	Fila <- 10;
	Columna <- 10;
	long <- 0; // Contamos la cantidad de letras ingresadas
	Dimensionar Matriz[Fila, Columna];
	Dimensionar vectorLetras[16];
	Dimensionar palabra[5];
	vectorLetras[0] <- "A";
	vectorLetras[1] <- "B";
	vectorLetras[2] <- "C";
	vectorLetras[3] <- "D";
	vectorLetras[4] <- "E";
	vectorLetras[5] <- "F";
	vectorLetras[6] <- "G";
	vectorLetras[7] <- "H";
	vectorLetras[8] <- "J";
	vectorLetras[9] <- "K";
	vectorLetras[10] <- "L";
	vectorLetras[11] <- "M";
	vectorLetras[12] <- "N";
	vectorLetras[13] <- "O";
	vectorLetras[14] <- "P";
	vectorLetras[15] <- "Q";

	/// Otorgamos aleatorios de letras a la matriz
	Para i <- 0 Hasta Fila - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta Columna - 1 Con Paso 1 Hacer
			/// Miremos bien esta linea
			m <- Aleatorio(0,15);
			Matriz[i,j] <- vectorLetras[m];
		FinPara
	FinPara
	/// Cargamos el vector palabra con Ceros;
	Para i <- 0 Hasta 5 - 1 Con Paso 1 Hacer
		palabra[i] <- "0";
	FinPara
	/// Mostramos la matriz cargada con letras
	Para i <- 0 Hasta Fila - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta Columna - 1 Con Paso 1 Hacer
			Escribir Sin Saltar " ", Matriz[i,j];
		FinPara
		Escribir " ";
	FinPara
	
	/// Ingresamos palabra que vamos a buscar
	Para i <- 0 Hasta 5 - 1 Con Paso 1 Hacer
		Escribir " Ingrese letra por letra a buscar en la matriz (Maximo 5 letras) ";
		Escribir " Si no quiere escribir mas ingrese 0 ";
		Leer palabra[i];
	FinPara
	/// Contamos la cantidad de letras ingresadas
	Para i <- 0 Hasta 5 - 1 Con Paso 1 Hacer
		Si palabra[i] <> "0" Entonces
			long <- long + 1;
		FinSi
	FinPara
	
	/// Buscamos por Horizontal
    Para i <- 0 Hasta Fila - 1 Hacer
        Para j <- 0 Hasta Columna - long Hacer
            logic <- Verdadero;
            Para k <- 0 Hasta long - 1 Hacer
                Si Matriz[i, j + k] <> palabra[k] Entonces
                    logic <- Falso;
                FinSi
            FinPara
            Si logic Entonces
                Escribir "Palabra encontrada horizontalmente en la fila ", i+1, " y columna ", j+1;
            FinSi
        FinPara
    FinPara
	
FinAlgoritmo
