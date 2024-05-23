// Motion of Objects
class Motion {
    // Acceleration of Objects
    func acceleration(finalVelocity: Double, initialVelocity: Double, time: Double) -> Double {
        return (finalVelocity - initialVelocity) / time
    }

    // Momentum of Objects
    func momentum(mass: Double, velocity: Double) -> Double {
        return mass * velocity
    }

    // Speed of Objects
    func speed(distance: Double, time: Double) -> Double {
        return distance / time
    }

    // Velocity of Objects
    func velocity(speed: Double, time: Double) -> Double {
        return speed / time
    }
}