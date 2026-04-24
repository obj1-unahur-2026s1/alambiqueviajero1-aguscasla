import recuerdos.*

object buenosAires {
    method recuerdo() = mate
    method puedeSerVisitadoPor(vehiculo) = vehiculo.esRapido()
}

object paris {
    method recuerdo() = llaveroTorreEiffel
    method puedeSerVisitadoPor(vehiculo) = vehiculo.tieneSuficienteCombustible()
}

object bagdad {
    var recuerdo = arena

    method asignarRecuerdo(unRecuerdo) {
        recuerdo = unRecuerdo
    }
    
    method recuerdo() = recuerdo 
    method puedeSerVisitadoPor(vehiculo) = true
}

object lasVegas {
    var ciudadEnHomenaje = paris

    method conmemorandoA(unaCiudad) {
        ciudadEnHomenaje = unaCiudad
    }

    method puedeSerVisitadoPor(vehiculo) = ciudadEnHomenaje.puedeSerVisitadoPor(vehiculo)
    method recuerdo() = ciudadEnHomenaje.recuerdo() 
}

object sanVicente {
    method recuerdo() = estatuillaDeAserrin
    method puedeSerVisitadoPor(vehiculo) = vehiculo.esRapido() && vehiculo.tieneSuficienteCombustible()
}