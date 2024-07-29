// Motion of Objects

// Acceleration of Objects
pub fn acceleration(finalVelocity: f64, initialVelocity: f64, time: f64) f64 {
    return (finalVelocity - initialVelocity) / time;
}

// Momentum of Objects
pub fn momentum(mass: f64, velocity: f64) f64 {
    return mass * velocity;
}

// Speed of Objects
pub fn speed(distance: f64, time: f64) f64 {
    return distance / time;
}

// Velocity of Objects
pub fn velocity(speed: f64, time: f64) f64 {
    return speed / time;
}
