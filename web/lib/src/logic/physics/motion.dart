// Motion of Objects

// Acceleration of Objects
double acceleration(double finalVelocity, double initialVelocity, double time) {
  return (finalVelocity - initialVelocity) / time;
}

// Momentum of Objects
double momentum(double mass, double velocity) {
  return mass * velocity;
}

// Speed of Objects
double speed(double distance, double time) {
  return distance / time;
}

// Velocity of Objects
double velocity(double speed, double time) {
  return speed / time;
}
