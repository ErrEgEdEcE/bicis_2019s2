import bicis.*
import accesorios.*

class Deposito {
	const property bicis = []
		
	method bicisRapidas() {
		return bicis.filter({ each => each.velocidadDeCrucero() > 25 })
	}
	
	method marcas() {
		return bicis.map({ each => each.marca() }).asSet()
	}
	
	method esNocturno() {
		return bicis.all({ each => each.tieneLuz() })
	}
	
	method tieneBicicletaParaLlevar(kilos) {
		return bicis.any({ each => each.carga() > kilos })
	}
	
	method marcaBiciMasRapida() {
		return bicis.max({ each => each.velocidadDeCrucero()}).marca()
	}
	
	method cargaTotalBicisLargas() {
		return bicis.filter({ each => each.largo() > 170}).sum({ each => each.carga() })
	}
	
	method cantidadDeBicisSinAccesorios() {
		return bicis.count({ each => each.accesorios().isEmpty() })
	}
	method companierasDe(bici) {
		return bicis.filter({ each => each.esCompanieraDe(bici)})
	}  
}
