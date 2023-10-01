class Corsa {
	const color
	var property position
	const property image
	const posiciones = []
	
	method posicionX(posicion) = posicion.get(0)
	method velocidadMaxima() = 150
	method peso() = 1300
	method color() = color
	method capacidad() = 4
	method pasoPor(posicion) = posiciones.contains(posicion)
	method cambiarPosicion(unaPosicion) {
		position = unaPosicion
		posiciones.add(unaPosicion)
	}
	method pasoPorFila(numero) = posiciones.map({p => self.posicionX(p)}).contains(numero)
	method recorrioFilas(lista_de_numeros) = lista_de_numeros.all({n => self.pasoPorFila(n)})
}

class Kwid{
	const tanqueAdicional

	method color() = "azul"
	method tanqueAdicional()= tanqueAdicional
	method capacidad() { 
		return if(tanqueAdicional) {
			3
		}
		else { 
			4
		}
	}

	method velocidadMaxima() {
		return if(tanqueAdicional) {
			120
		}
		else { 
			110
		}
	}

	method peso() {
		return if(tanqueAdicional) {
			1350
		}
		else { 1200 }
	}

}

object trafic {
	var property interior
	var property motor

	method capacidad() = interior.capacidad()

	method velocidadMaxima() = motor.velocidadMaxima()

	method peso() = 4000 + interior.peso() + motor.peso()

	method color() = "blanco"
}

class AutosEspeciales {
	var capacidad
	var velocidadMaxima
	var peso
	var color

	method capacidad() = capacidad
	method velocidadMaxima() = velocidadMaxima
	method peso() = peso
	method color() = color
}

object comodo {

	method capacidad() = 5
	method peso() = 700
}

object popular {
	method capacidad() = 12
	method peso() = 1000	
}

object pulenta {

	method peso() = 800
	method velocidadMaxima() = 130
}

object bataton {

	method peso() = 500
	method velocidadMaxima() = 80
}
