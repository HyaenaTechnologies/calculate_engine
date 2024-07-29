// Specification of Objects

// Density of Objects
double density(double mass, double volume) {
  return mass / volume;
}

// Energy of Objects
double energy(double mass, double velocity) {
  return (1 / 2) * mass * (velocity * velocity);
}

// Force of Objects
double force(double mass, double acceleration) {
  return mass * acceleration;
}

// Pressure of Objects
double pressure(double force, double acceleration) {
  return force / acceleration;
}

// Weight of Objects
double weight(double mass, double gravitationalAcceleration) {
  return mass * gravitationalAcceleration;
}
