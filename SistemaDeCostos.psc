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
	
	
	
	
	
FinProceso
