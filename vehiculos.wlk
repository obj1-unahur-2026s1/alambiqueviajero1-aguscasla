object alambiqueVeloz {
    var combustible = 15
    var desgaste = 0

    method tieneSuficienteCombustible() = combustible > 10
    method esRapido() = desgaste < 5

    method viajar() {
        combustible -= 2
        desgaste += 1
    }
}

object laChancha {
    var combustible = 20
    var velocidad = 1
    var viajes = 0

    method tieneSuficienteCombustible() = combustible > 15
    method esRapido() = velocidad >= 5

    method tieneExperiencia() = viajes >= 3

    method aumentarVelocidad() {
        if (self.tieneExperiencia()){
            velocidad += 1
            viajes -= 3
        }
    }

    method viajar() {
        combustible -= 3
        viajes += 1
    } 

}