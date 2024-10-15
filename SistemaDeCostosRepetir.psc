
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
	
		
		Repetir
			Escribir "El precio del zapato es $100";
			Escribir "-------------------------------------------";
			Escribir "Porfavor ingrese su cupon si dispone de uno:";
			Escribir "1. Tengo cupon";
			Escribir "2. No tengo cupon";
			Escribir "0. Cancelar";
			Escribir "-----------------";
			Escribir "Elige tu opción:";
			
			definir op Como Real;
			leer op;
			
			si (op <> 0) Entonces
				// pedimos el numero de productos para saber el descuento a aplicar por n de prodcuto
				Escribir "Ingresa numero de productos:";
				Definir Nproductos Como Entero;
				leer Nproductos;
				//definimos el descuento aplicado por la cantidad de productos
				Definir Dproductos Como Real;
				Dproductos <- Nproductos * 0.475;
				
				// pedimos la direccion para enviar el producto
				Escribir "Ingresa el lugar de destino para calcular envio:";
				
				
				Segun op Hacer
					1: 
						// aplicamos el descuento
						Definir PDescuento como real;
						PDescuento <- POProducto * descuento; 
						definir PrecioFinal Como Real;
						PrecioFinal <- POProducto - PDescuento;
						Escribir "",PrecioFinal,"sin IVA";
						
						
						// Aplicamos el IVA al precio con descuento
						PrecioFinal<- PrecioFinal * IVA; 
						Escribir "",PrecioFinal,"con IVa";
						
						
						// Aplicamos el descuento por cantidad 
						definir DCproducto como real;
						DCproducto <- PrecioFinal * Dproductos;
						Escribir "",DCproducto,"";
						
						
						// calculamos el costo de envio 
						// 10 de costo fijo + Numero de productos + kilo de cada caja
						CostoEnvio <- CostoEnvio + Nproductos *3; 
						
						// sumamos esto a la operacion; 
						PrecioFinal <- (DCproducto * Nproductos) + CostoEnvio; 
						Escribir "",PrecioFinal,"";
					2:
						// No hay descuento que aplicar
						
						definir PrecioFinal Como Real;
						PrecioFinal <- POProducto * Nproductos; 
						Escribir "",PrecioFinal,"sin IVA";
						
						
						// Aplicamos el IVA al precio con descuento
						PrecioFinal<- PrecioFinal * IVA; 
						Escribir "",PrecioFinal,"con IVa";
						
						
						// Aplicamos el descuento por cantidad 
						definir DCproducto como real;
						DCproducto <- PrecioFinal * Dproductos;
						Escribir "",DCproducto,"";
						
						
						// calculamos el costo de envio 
						// 10 de costo fijo + Numero de productos + kilo de cada caja
						CostoEnvio <- CostoEnvio + Nproductos *3; 
						
						// sumamos esto a la operacion; 
						PrecioFinal <- (DCproducto * Nproductos) + CostoEnvio; 
						Escribir "",PrecioFinal,"";
				FinSegun
				
				Escribir "El monto a pagar es de: ",PrecioFinal,"";
				Escribir "============================";
			SiNo
				Escribir "Adios!";
			FinSi
		Hasta Que op <- 0;
		
		
FinAlgoritmo


