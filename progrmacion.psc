Algoritmo sin_titulo
	
	//integrantes 1	 Elmer Novoa
	//integrantes 2	 Camilo Cipamocha
	//integrantes 3	 Daniel Donado
	
	
	Escribir '********************************************'
	Escribir '**  Bienvenido al casino de cara y sello  **'
	Escribir '********************************************'
	Escribir 'Si gana su apuesta se duplicara el valor apostado'
	
	Escribir 'Como es su nombre'
	Leer nomb
	Escribir '¿Cuanto dinero quiere ingresar a su cuenta para poder participar en las apuestas?'
	Leer  dinero_ingresado
	desicion=1
	contador = 0
	
	Repetir
		Escribir '¿Cuanto dinero quiere apostar?'					//INICIO APUESTA
		Leer valor_apues
		
		si valor_apues>dinero_ingresado
			escribir 'El dinero con que cuenta no es suficiente para generar la apuesta'
		sino
			contador=contador+1
			dinero_ingresado = dinero_ingresado - valor_apues
			escribir ' ¿Cual es su eleccion para la apuesta caras o sellos?'
			Escribir  'Ingresa el numero cero (0) para elegir cara, y el numero uno (1) para seleccionar sellos'
			Leer eleccion
			Escribir ''
			Escribir '*********************************'
			escribir  '****   Iniciando apuesta    ****'
			Escribir '*********************************'
			Escribir ''
			num= azar(2)
			si eleccion=num
				dinero_ingresado=dinero_ingresado + (valor_apues*2)
				Escribir 'Felicidades acaba de ganar su apuesta'
				
			sino
				Escribir 'Que mala suerte, perdiste la apuesta no acertaste en al resultado'
			FinSi
			Escribir 'su saldo es de:', dinero_ingresado
		FinSi
		
		Escribir ''
		
		si dinero_ingresado>0
			Escribir '¿Quiere continuar apostando?'
			Escribir 'Ingresa el 1 para continuar apotando, o 2 para finalizar con las apuestas'
			Leer desicion
		SiNo
			Escribir 'Que pena, ya no cuenta con el recurso necesario para seguir apostando'
			Escribir '¿Desea agregar màs dinero a su saldo para continuar apostando?'
			Escribir 'Ingresa el 1 para si, o 2 para no'
			Leer eleccion
			si eleccion = 1
				Escribir '¿Cuanto dinero quiere ingresar a su cuenta para poder participar en las apuestas?'
				Leer  dinero_ingresado
			SiNo
				desicion = 2
			FinSi
		FinSi
		
	Hasta Que desicion=2

	Escribir 'Gracias ',nomb, ' por participar en el casino de cara y sello'
	Escribir 'Usted ha jugado un total de ', contador,' veces'
	Escribir 'Su saldo final es de: ', dinero_ingresado

FinAlgoritmo
