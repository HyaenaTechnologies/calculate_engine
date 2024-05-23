// Definition of Objects
class PhysicalObject {
    // Density of Objects
    func cdensity(mass: Double, volume: Double) -> Double {
        return mass / volume
    }

    // Energy of Objects
    func energy(mass: Double, velocity: Double) -> Double {
        return (1 / 2) * mass * (velocity * velocity)
    }

    // Force of Objects
    func force(mass: Double, acceleration: Double) -> Double {
        return mass * acceleration
    }

    // Pressure of Objects
    func pressure(force: Double, acceleration: Double) -> Double {
        return force / acceleration
    }

    // Weight of Objects
    func weight(mass: Double, gravitationalAcceleration: Double) -> Double {
        return mass * gravitationalAcceleration
    }
}