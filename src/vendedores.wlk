
class Vendedores {
	var property certificaciones =#{}

method puedeTrabajar(ciudad)

method esVersatil(){
return certificaciones.size()>3  and
	certificaciones.any({c=> c.esSobreProducto()}) and 
	certificaciones.any({c=>  not c.esSobreProducto()}) 
	
	}

	

method esFirme(){
	return certificaciones.sum({c=> c.cantidadDePuntos() }) > 30
	}
	
method esInfluyente()
}

class VendedorFijo inherits Vendedores{
	var property ciudadVive
	
override method puedeTrabajar(ciudad){
		return ciudadVive == ciudad
	}
override method esInfluyente(){ return false}	
	
}

class Viajante inherits Vendedores{
	var property provinciasHabilitadas = []
	
	override method puedeTrabajar(ciudad){
		return provinciasHabilitadas.contains(ciudad)
	}
	
	override method esInfluyente(){ 
		var  poblacion 
		provinciasHabilitadas.sum({p=> p.poblacion()})
		return poblacion > 10000000
	}
}

class ComercioCorresponsal inherits Vendedores{
	var property ciudadesSucursales= []
	override method puedeTrabajar(ciudad){
		return ciudadesSucursales.contains(ciudad)
	}
	override method esInfluyente(){
		
	}
}
