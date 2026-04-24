import luke.*

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
    var combustible = 30
    var velocidad = 1

    method tieneSuficienteCombustible() = combustible > 15
    method esRapido() = velocidad >= 3 && luke.ciudadesVisitadas() >= 3

    method viajar() {
        combustible -= 2
        velocidad += 1
    } 

}