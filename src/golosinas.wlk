import sabores.*

object bombon {
	var peso = 15
	
	method precio() = 5
	method sabor() = frutilla
	method peso() = peso
	method libreDeGluten() = true
	
	method recibirMordisco() {
		peso = 0.max((peso * 0.8) - 1)
	}
	
}

object alfajor {
	var peso = 300
	
	method precio() = 12
	method sabor() = chocolate
	method peso() = peso
	method libreDeGluten() = false
	
	method recibirMordisco() {
		peso = (peso * 0.8)
	}
}

object caramelo {
	var peso = 5
	
	method precio() = 1
	method sabor() = frutilla
	method peso() = peso
	method libreDeGluten() = true
	
	method recibirMordisco() {
		peso = 0.max(peso - 1)
	}
}

object chupetin {
	var peso = 7
	
	method precio() = 2
	method sabor() = naranja
	method peso() = peso
	method libreDeGluten() = true
	
	method recibirMordisco() {
		peso = 2.max(peso * 0.9)
	}
}

object oblea {
	var peso = 250
	
	method precio() = 5
	method sabor() = vainilla
	method peso() = peso
	method libreDeGluten() = false
	
	method recibirMordisco() {
		peso = if(peso > 70) peso*0.5 else peso*0.75
	}
}


object chocolatin {
	var peso = 100
	const precio = peso * 0.5
	
	method precio() = precio
	method sabor() = chocolate
	method peso() = peso
	method libreDeGluten() = false
	
	method recibirMordisco() {
		peso = 0.max(peso - 2)
	}
}

object baniada {
	var property base
	var pesoBanio = 4

	method precio() = base.precio() + 2
	method sabor() = base.sabor()
	method peso() = base.peso() + pesoBanio
	method libreDeGluten() = base.libreDeGluten()
	
	method recibirMordisco() {
		base.recibirMordisco()
		pesoBanio = 0.max(pesoBanio - 2)
	}	
}

object pastillaTuttiFrutti {
	var property libreDeGluten = false
	const sabores = [frutilla, chocolate, naranja]
	var cantidadMordidas = 0
	
	method precio() = if(libreDeGluten) 7 else 10
	method sabor() = sabores.get((cantidadMordidas) % 3)
	method peso() = 5
	
	method recibirMordisco() {
		cantidadMordidas ++
	}
}



