package Clases;



public aspect AspectoTareaJ {
	
	pointcut ejecutarCambiodecolor() : execution (* Ventana.CambiarColor());
	
	pointcut cargadeElementos() : execution (* Ventana.iniciarComponentes());
	
	before() : ejecutarCambiodecolor(){
		
		
	}
	
	before() : cargadeElementos(){
		for(int i=1 ; i<11;i++) {
			System.out.println("Cargando ... "+i+"0%");
		}
	}
	
}
