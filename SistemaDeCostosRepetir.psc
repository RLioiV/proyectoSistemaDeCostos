
Algoritmo CalculadoraRepetir
	// POProducto es el precio original del producto
		Definir POProducto Como real;
		POProducto <- 100;
		// cupon de descuento 
		Definir descuento Como Real;
		descuento <- 0.10; 
		// IVA 
		Definir IVA como real; 
		IVA <- 1.12; 
		// Costo de envio
		Definir CostoEnvio como real; 
		CostoEnvio <- 10;
		
		// 
		definir op Como Real;
		Definir Nproductos Como Entero;
		Definir Dproductos Como Real;
		Definir PDescuento como real; 
		definir PrecioFinal Como Real; 
		definir DCproducto como real; 
		definir MontoPagar como real; 
		
		
		Repetir
			Escribir " UNIDAD ZAPATO: $100";
			Escribir "-------------------------------------------";
			Escribir "Porfavor ingrese su cupon si dispone de uno:";
			Escribir "1. Tengo cupon";
			Escribir "2. No tengo cupon";
			Escribir "0. Cancelar";
			Escribir "-----------------";
			Escribir "Elige tu opción:";
			
			
			leer op;
			
			si (op <> 0) Entonces
				// pedimos el numero de productos para saber el descuento a aplicar por n de prodcuto
				Escribir "Ingresa numero de productos:";
				;
				leer Nproductos;
				//definimos el descuento aplicado por la cantidad de productos
				
				Dproductos <- Nproductos * 0.475;
				
				// pedimos la direccion para enviar el producto
				Escribir "Ingresa el lugar de destino para calcular envio:";
				
				
				Segun op Hacer
					1: 
						// HAY CUPON DE DESCUENTO POR LO QUE APLICAMOS EL DESCUENTO 
						;
						PDescuento <- POProducto * descuento; 
						;
						PrecioFinal <- POProducto - PDescuento;
						Escribir "",PrecioFinal,"sin IVA";
						
						
						// Aplicamos el IVA al precio con descuento
						PrecioFinal<- PrecioFinal * IVA; 
						Escribir "",PrecioFinal,"con IVa";
						
						
						// Aplicamos el descuento por cantidad 
						;
						DCproducto <- PrecioFinal * Dproductos;
						Escribir "",DCproducto,"";
						
						
						// calculamos el costo de envio 
						// 10 de costo fijo + Numero de productos + kilo de cada caja
						CostoEnvio <- CostoEnvio + Nproductos *3; 
						
						// sumamos esto a la operacion; 
						PrecioFinal <- (DCproducto * Nproductos) + CostoEnvio; 
						Escribir "",PrecioFinal,"";
					2:
						// NO HAY DESCUENTO QUE APLICAR 
						
						PrecioFinal <- POProducto * Nproductos; 
						Escribir "",PrecioFinal,"sin IVA";
						
						
						// Aplicamos el IVA al precio con descuento
						PrecioFinal<- PrecioFinal * IVA; 
						Escribir "",PrecioFinal,"con IVa";
						
						
						// Aplicamos el descuento por cantidad 
						
						DCproducto <- PrecioFinal * Dproductos;
						Escribir "",DCproducto,"";
						
						
						// calculamos el costo de envio 
						// 10 de costo fijo + Numero de productos + kilo de cada caja
						CostoEnvio <- CostoEnvio + Nproductos * 3; 
						
						// sumamos esto a la operacion; 
						PrecioFinal <- (DCproducto) + CostoEnvio; 
						Escribir "",PrecioFinal,"";
				FinSegun
				
				Escribir "El monto a pagar es de: ",PrecioFinal,"";
				Escribir "============================";
				Escribir "Ingrese monto a pagar: ";
				Leer MontoPagar;
				Escribir "============================"; 
				si MontoPagar = PrecioFinal	Entonces
					escribir "gracias vuelva pronto"; 
	
					
				FinSi
				Escribir "Adios!";
			FinSi
		Hasta Que op <- 0 o MontoPagar = PrecioFinal; 
		
		
		
FinAlgoritmo


