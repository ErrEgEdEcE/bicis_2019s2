class Accesorio {
	method peso()
	method carga()
	method esLuminoso()
}

class Farolito inherits Accesorio {
	override method peso() {return 0.5}
	override method carga() {return 0}
	override method esLuminoso() {return true}
}

class Canasto inherits Accesorio {
	var property volumen = 0
	override method peso() {return volumen / 10}
	override method carga() {return volumen * 2}
	override method esLuminoso() {return false}	
}

class MorralDeBici inherits Accesorio {
	var property largo = 0
	var property tieneOjoDeGato = true
	override method peso() {return 1.2}
	override method carga() {return largo / 3}
	override method esLuminoso() {
		return tieneOjoDeGato
	}
}

/*
 * Elegí crear clases para cada accesorio (ya que debo poder crear
 * nuevas instancias para diferentes bicis, sobre todo en los accesorios cuyas variables cambian),
 * que son a su vez subclases de la superclase Accesorio, que establece el contrato
 * Cada clase nueva debe respetar los métodos que componen el contrato de esta superclase, para
 * asegurar el polimorfismo de todos los accesorios en relación a las bicis.
*/ 