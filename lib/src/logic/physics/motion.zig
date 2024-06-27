// Motion of Objects

// Acceleration of Objects
pub fn acceleration(final_velocity: f64, initial_velocity: f64, time: f64) f64 {
    return (final_velocity - initial_velocity) / time;
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
