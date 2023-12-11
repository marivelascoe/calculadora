Algoritmo CALCULADORA
//	El prop�sito es desarrollar el funcionamiento de una calculadora que realice operaciones b�sicas como suma (+), resta (-), multiplicaci�n (*), y divisi�n (/). El algoritmo debe permitir al usuario seleccionar el tipo de operaci�n que desea realizar. Adem�s, se le brinda al usuario la posibilidad de ingresar una cantidad variable de n�meros, especialmente si elige la opci�n de multiplicaci�n (*) o divisi�n (/). En el caso de la divisi�n, se implementar� un men� adicional que permita elegir qu� tipo de operaci�n realizar con la serie de n�meros ingresada. Por ejemplo, podr�a optar por dividir solo los n�meros pares o realizar una divisi�n entre la cantidad de n�meros ingresados.
//El men� de las opciones, multiplicaci�n (*) o divisi�n (/) con un m�ximo de tres elecciones posibles. Se recomienda utilizar funciones para la implementaci�n de este ejercicio. El lenguaje a emplear es PSint.
//El plazo m�ximo para la entrega es el 07/12/2023 antes de las 3:00 p. m.
	
	Escribir "----------------- Calculadora -----------------"
	Escribir ""
	Escribir "  1 - Suma           (+) "
	Escribir "  2 - Resta          (-) "
	Escribir "  3 - Multiplicacion (x) "
	Escribir "  4 - Division       (�) "
	Escribir "-----------------------------------------------"
	escribir "Seleccione la operacion que desea realizar"
	Leer Opc
	Limpiar Pantalla
	
	Segun Opc hacer
		
		1:	Escribir "---------------  Elegiste SUMA (+)  -------------------"
			Escribir "�Favor ingrese la cantidad de numeros que desea sumar?" Sin Saltar
			leer cant;
			Escribir "Ingrese los numeros que desea sumar"
			Dimension  num[cant];
			Para i=1 Hasta cant con paso 1 Hacer
				Leer num[i];
			FinPara
			a=0
			para i=1 hasta cant con paso 1 Hacer
				b<-num[i];
				a<-suma(a,b);
			FinPara
			Escribir"____+"
			Escribir " " a;
			
		2: Escribir "---------------  Elegiste RESTA (-)  -------------------"
			Escribir "�Favor ingrese la cantidad de numeros que desea restar?" Sin Saltar
			leer cant;
			Escribir "Ingrese los numeros que desea restar"
			Dimension  num[cant];
			Para i=1 Hasta cant con paso 1 Hacer
				Leer num[i];
			FinPara
			a=num[1];
			para i=1 hasta cant-1 con paso 1 Hacer
				b<-num[i+1];
				a<-resta(a,b);
			FinPara
			Escribir"____ -"
			Escribir " " a
			
		3: Escribir "-------------  Elegiste MULTIPLICAR (x)  --------------"
			Escribir "�Favor ingrese la cantidad de numeros que desea multiplicar?" Sin Saltar
			leer cant;
			Escribir 'Ingrese los numeros que dese multiplicar entre si:';
			Dimension  num[cant];
			Para i=1 Hasta cant con paso 1 Hacer
				Leer num[i];
			FinPara
			a=1;
			para i=1 hasta cant con paso 1 Hacer
				b<-num[i];
				a<- multiplicacion(a,b);
			FinPara
			Escribir"____ x"
			Escribir " " a
			
		4:Escribir "-------------  Elegiste DIVIDIR (�)  --------------"
			Escribir "Que opcion de divion desea realizar"
			Escribir "a. Dividir todo Ejem: n � n � n = N"
			Escribir "b. Mostrar el residuo de la division (solo aplica para la division entre dos numeros"
			Escribir "c. Dividir por la cantidad de numeros ingresados
			Leer eleccion
			
			Si eleccion == 'a' Entonces
				Escribir "�Favor ingrese la cantidad de numeros que desea dividir?" Sin Saltar
				leer cant;
				Dimension  num[cant];
				Para i=1 Hasta cant con paso 1 Hacer
					Leer num[i];
				FinPara
				a=num[1];
				para i=1 hasta cant-1 con paso 1 Hacer
					b<-num[i+1];
					a<-division(a,b);
				FinPara
				Escribir"____ � "
				Escribir " " a
			FinSi
			Si eleccion == "b" Entonces
				Escribir "�Favor ingrese 2 numeros?"
				leer a;
				leer b;
					total<-division2(a,b)
				Escribir"_____  "
				Escribir " " total
			FinSi
			Si eleccion == "c" Entonces
				Escribir "�Favor ingrese la cantidad de numeros que desea dividir?" Sin Saltar
				leer cant;
				Dimension  num[cant];
				Para i=1 Hasta cant con paso 1 Hacer
					Leer num[i];
				FinPara
				a=num[1];
				para i=1 hasta cant-1 con paso 1 Hacer
					b=num[i+1];
					a=suma(a,b);
					n=a/cant
				FinPara
				Escribir"____ � "
				Escribir " " n
			FinSi
	FinSegun
FinAlgoritmo
	

Funcion total<-suma(a,b)
	total=a+b;
FinFuncion

Funcion total<-resta(a,b)
	total=a-b;
FinFuncion

Funcion total <- multiplicacion(a,b)
	total=a*b
FinFuncion

Funcion total<-division(a,b)
	total=a/b;
FinFuncion

Funcion total<-division2(a,b)
	total=a mod b;
FinFuncion


//
//Funcion cont <- numPar (cant, n, n_Pares) 
//	cont = 0;
//	Para i = 1 Hasta n Hacer
//		Si (cant[i] mod 2) == 0 Entonces
//			n_pares[i] = cant[i];
//			cont = cont + 1;
//		FinSi
//	FinPara
//FinFuncion

	