#ifndef VOLUME_H
#define VOLUME_H

#include "../constant/pi.h"

// Volume of Objects

// Volume of a Cone
double coneVolume(double height, double radius);

// Volume of a Cube
double cubeVolume(double height, double length, double width);

// Volume of a Cuboid
double cuboidVolume(double height, double length, double width);

// Volume of a Cylinder
double cylinderVolume(double height, double radius);

// Volume of a Hemisphere
double hemisphereVolume(double radius);

// Volume of a Prism
double prismVolume(double baseArea, double height);

// Volume of a Pyramid
double pyramidVolume(double baseArea, double height);

// Volume of a Sphere
double sphereVolume(double radius);

#endif
