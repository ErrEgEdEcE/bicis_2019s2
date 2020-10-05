import accesorios.*

class Bicicleta {
	var property rodado
	var property largo
	var property marca
	var property accesorios = #{}
	
	method altura() {
		return rodado * 2.5 + 15
	}
	method velocidadDeCrucero() {
	    return if (largo > 120)  {rodado + 6}
		else  {rodado + 2}
	}
	method carga() {
		return accesorios.sum({ each =>  each.carga()})
	}
	method peso() {
		return rodado / 2 + accesorios.sum({ each => each.peso() })
	}
	method tieneLuz() {
		return accesorios.any({ each => each.esLuminoso() })
	}
	method cantidadDeAccesoriosLivianos() {
		return accesorios.count({ each => each.peso() < 1})
	}
	method esCompanieraDe(bici) {
		return self.marca() == bici.marca() and (self.largo() - bici.largo()).abs() <= 10
	}
}
