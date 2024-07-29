#ifndef PHYSICAL_OBJECT_H
#define PHYSICAL_OBJECT_H

// Specification of Objects

// Density of Objects
double density(double mass, double volume);

// Energy of Objects
double energy(double mass, double velocity);

// Force of Objects
double force(double mass, double acceleration);

// Pressure of Objects
double pressure(double force, double acceleration);

// Weight of Objects
double weight(double mass, double gravitationalAcceleration);

#endif
