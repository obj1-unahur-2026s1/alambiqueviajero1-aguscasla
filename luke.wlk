import ciudades.*
import vehiculos.*

object luke {
    var recuerdo = paris.recuerdo()
    var ciudadesVisistadas = 0

    method agregarNuevoRecuerdoDe(unaCiudad) {
        recuerdo = unaCiudad.recuerdo()
    }
    method viajarA(unaCiudad, unVehiculo){
        if (unaCiudad.puedeSerVisitadoPor(unVehiculo)){
            unVehiculo.viajar()
            self.agregarNuevoRecuerdoDe(unaCiudad)
            ciudadesVisistadas += 1
        }
    }
    method ciudadesVisitadas() = ciudadesVisistadas 
    method recuerdo() = recuerdo 
}