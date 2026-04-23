import ciudades.*

object luke {
    var recuerdo = null

    method agregarNuevoRecuerdoDe(unaCiudad) {
        recuerdo = unaCiudad.recuerdo()
    }
}


object alambiqueViajero {
    var combustible = 15
    var desgaste = 0

    method tieneSuficienteCombustible() = combustible > 10
    method esRapido() = desgaste < 5

    method puedeViajarA(unaCiudad) {
        return unaCiudad.puedeSerVisitadoPor(self)
    }

    method viajarA(unaCiudad) {
        if (self.puedeViajarA(unaCiudad)){
            combustible -= 2
            desgaste += 1
            luke.agregarNuevoRecuerdoDe(unaCiudad)
        }
    }
}