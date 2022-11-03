//Suma(operandoUno, operandoDos) nos inidica o nos da la funcionalidad
//de que las entradas se van a proporcionar desde el exterior o desde un 
//algoritmo principal.
//Por lo cual se elimina "Definir operandoUno, operandoDos, resultado Como Real)"
//Suma(operandoUno, operandoDos) se puede ver como un contrato que necesita los datos dentro
//del par�ntesis
//Para que la funci�n suma retorne un dato, tenemos que invocar ese retorno
//a trav�s de "resultado <- Suma(operandoUno, operandoDos)"
Funcion resultado <- Suma(operandoUno, operandoDos)
	
	Definir resultado Como Real
	
	resultado <- operandoUno + operandoDos
	
FinFuncion

Funcion resultado <- Resta(operandoUno, operandoDos)
	
	Definir resultado Como Real
	
	resultado <- operandoUno - operandoDos
	
FinFuncion

Funcion resultado <- Multiplicacion(operandoUno, operandoDos)
	
	Definir resultado Como Real
	
	resultado <- operandoUno * operandoDos
	
FinFuncion

Funcion resultado <- Division(operandoUno, operandoDos)
	
	Definir resultado Como Real
	
	resultado <- operandoUno / operandoDos
	
FinFuncion

Algoritmo calculadora
	
	Definir operacion Como Entero
	Definir numeroUno, numeroDos Como Real
	Definir resultado como Real
	
	Repetir
		
		Escribir "Ingrese el numero de la operacion a realizar"
		Escribir "01 Suma"
		Escribir "02 Resta"
		Escribir "03 Multiplicaci�n"
		Escribir "04 Divisi�n"
		
		Leer operacion
		
		Si (operacion > 0 y operacion <= 4 ) Entonces
			Escribir "Ingrese su primer n�mero"
			Leer numeroUno
			Escribir "Ingrese su segundo n�mero"
			Leer numeroDos
			
			//Al invocar la oparaci�n Suma, debe de cumplirse el contrato que se estableci�n
			//dentro de nuestro SubAlgoritmo "Suma(operandoUno, operandoDos)"
			Segun operacion Hacer
				1: resultado <- Suma(numeroUno, numeroDos)
				2: resultado <- Resta(numeroUno, numeroDos)
				3: resultado <- Multiplicacion(numeroUno, numeroDos)
				4: resultado <- Division(numeroUno, numeroDos)
			FinSegun
			Escribir "El resultado de la operaci�n es: ", resultado
		SiNo
			Escribir "La opci�n seleccionada es incorrecta, por favor seleccione una valida"
		FinSi
	Mientras Que operacion > 0
	
	
FinAlgoritmo