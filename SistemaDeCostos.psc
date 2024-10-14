Proceso SistemaDeCostos
	// precio original del producto
	Definir POProducto Como real;
	POProducto <- 100;
	Escribir "el precio del zapato es $100";
	Escribir "-------------------------------------------";
	Escribir "Porfavor ingrese su cupon si dispone de uno:";
	// ingresar el si el cual hace el fork si esque se aplica o no el desuento
	
	//cupon de descuento
	Definir descuento Como Real;
	descuento <- 0.10; 
	
	// aplicacion del descuento 
	Definir PDescuento como real;
	PDescuento <- POProducto * descuento; 
	
	// precio con descuento aplicado sin IVA
	definir PrecioFinal Como Real;
	PrecioFinal <- POProducto - PDescuento;
	
	Escribir "El descuento aplicado es de: ",PDescuento,"";
	Escribir "Su precio final es de: ",PrecioFinal,"";
	
	// aplicamos el IVA 
	
	Definir IVA como real; 
	IVA <- 1.12; 
	Escribir "IVA 12%"; 
	PrecioFinal<- PrecioFinal * IVA; 
	Escribir "",PrecioFinal,"";
	
	// descuento por cantidad comprada 
	descuento <- 0.95; 
	
	PrecioFinal <- PrecioFinal * 0.95; 
	escribir "",PrecioFinal,"";
	
	// calculamos el precio del envio 
	
	Definir CostoEnvio como real; 
	CostoEnvio <- 10 + 2 *3; 
	// 10 (costo fijo)
	// 2 (cantidad de producto)
	// 3 (Kilos de las cajas, zapatos pesados xd)
	
	PrecioFinal <- (PrecioFinal*2) + CostoEnvio; 
	Escribir "",PrecioFinal,"";
	
	// implementar bucles y condiciones
	// implementar arreglos unidimensionales y/o bidemsionales 
	
	
	
	
	
	
	
FinProceso
