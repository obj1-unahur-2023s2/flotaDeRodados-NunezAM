import vehiculos.*
import pedido.*

class Dependencia {
	const property flotaDeRodados = []
	var empleados
	const property pedidos = []

	method agregarAFlota(rodado) {
		flotaDeRodados.add(rodado)
	}

	method quitarDeFlota(rodado) {
		flotaDeRodados.remove(rodado)
	}

	method pesoTotalFlota() = flotaDeRodados.sum({rod => rod.peso()})
	method estaBienEquipada() = flotaDeRodados.size() >= 3 && 
								flotaDeRodados.all({rod => rod.velocidadMaxima() >= 100})
	method capacidadTotalEnColor(color) = flotaDeRodados.filter({rod => rod.color() == color}).sum({rod => rod.capacidad()})
	method colorDelRodadoMasRapido() = flotaDeRodados.max({rod => rod.velocidadMaxima()}).color()
	method capacidadFaltante() = 0.max(empleados - flotaDeRodados.sum({rod => rod.capacidad()}))
	method esGrande() = empleados >= 40 && flotaDeRodados.size() >= 5
	
	method totalPasajeros() = pedidos.sum({p => p.pasajeros()})
	method pedidosInsatisfechos() = pedidos.filter({p => })// algo que no que es
	method tienenLosPedidosComoIncompatible(color) {} //Pendiente
}