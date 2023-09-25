import vehiculos.*

class Pedido {
	var property distanciaEnKm
	var tiempoMaximo
	var property pasajeros
	const property coloresIncompatibles = #{}
	
	method tiempoMaximo() = tiempoMaximo
	
	method velocidadRequerida() = distanciaEnKm / tiempoMaximo
	
	method puedeSatisfacerElPedido(auto) = (auto.velocidadMaxima() - self.velocidadRequerida()) >= 10 &&
											auto.capacidad() >= pasajeros  && !coloresIncompatibles.contains(auto.color())
	
	method acelerar() {
		tiempoMaximo = 0.max(tiempoMaximo - 1)
	}
	
	method relajar() {
		tiempoMaximo ++
	}
}