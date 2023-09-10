import golosinas.*

object mariano {
	const golosinas = #{}
	
	method comprar(unaGolosina) {
		golosinas.add(unaGolosina)
	}
	
	method desechar(unaGolosina) {
		golosinas.remove(unaGolosina)
	}
	
	method cantidadDeGolosinas() =golosinas.size()
	
	method tieneLaGolosina(unaGolosina) = golosinas.contains(unaGolosina)
	
	method probarGolosinas() {
		golosinas.forEach( {golosina => golosina.recibirMordisco()})
	}
	
	method hayGolosinaSinTACC() =golosinas.any({golosina => golosina.libreDeGluten()})
	
	method preciosCuidados() = golosinas.all({golosina => golosina.precio() <= 10})
	
	method golosinaDeSabor(unSabor) =golosinas.find({golosina => golosina.sabor() == unSabor})
	
	method golosinasDeSabor(unSabor) =golosinas.
		filter({golosina => golosina.sabor() == unSabor})
	
	method sabores() {
		const listaSabores = #{} 
		golosinas.forEach({ golosina => listaSabores.add(golosina.sabor())})
		return listaSabores
	}
	
	method golosinaMasCara() =golosinas.max({ golosina => golosina.precio() })
	
	method pesoGolosinas() = golosinas.sum({ golosina => golosina.peso() })
	
}
