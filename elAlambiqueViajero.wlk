import ciudades.*
import vehiculos.*

object luke {
    var recuerdo = null

    method agregarNuevoRecuerdoDe(unaCiudad) {
        recuerdo = unaCiudad.recuerdo()
    }
    method viajarA(unaCiudad, unVehiculo){
        if (unaCiudad.puedeSerVisitadoPor(unVehiculo)){
            unVehiculo.viajar()
            self.agregarNuevoRecuerdoDe(unaCiudad)
        }
    }
}