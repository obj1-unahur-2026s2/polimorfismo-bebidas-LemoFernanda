// Bebidas
object whisky {
 method rendimiento(dosis)= 0.9 ** dosis
}
object terere {
method rendimiento(dosis)= (0.1 *dosis).max(1)
}
object cianuro {
method rendimiento(dosis)= 0
}


// Tito deportista
object tito {


 const peso = 70
 var bebidaActual= whisky
 var dosisActual= 0
 method peso() = peso


 // bebida que toma tito reemplaza la anterior
 method consumir(cantidad, bebida) {
 dosisActual = cantidad
 bebidaActual = bebida
 }
method velocidad() = bebidaActual.rendimiento(dosisActual) * 490 / peso
}

