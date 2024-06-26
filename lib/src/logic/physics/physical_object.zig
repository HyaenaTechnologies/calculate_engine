// Definition of Objects

// Density of Objects
pub fn density(mass: f64, volume: f64) f64 {
    return mass / volume;
}

// Energy of Objects
pub fn energy(mass: f64, velocity: f64) f64 {
    return (1 / 2) * mass * (velocity * velocity);
}

// Force of Objects
pub fn force(mass: f64, acceleration: f64) f64 {
    return mass * acceleration;
}

// Pressure of Objects
pub fn pressure(force: f64, acceleration: f64) f64 {
    return force / acceleration;
}

// Weight of Objects
pub fn weight(mass: f64, gravitationalAcceleration: f64) f64 {
    return mass * gravitationalAcceleration;
}
