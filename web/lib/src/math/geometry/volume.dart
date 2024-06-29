import 'package:calculate_engine/src/math/constant/pi.dart';

// Volume of Objects

// Volume of a Cone
double coneVolume(double height, double radius) {
  return (1 / 3) * (pi() * radius * radius) * height;
}

// Volume of a Cube
double cubeVolume(double height, double length, double width) {
  return height * length * width;
}

// Volume of a Cuboid
double cuboidVolume(double height, double length, double width) {
  return height * length * width;
}

// Volume of a Cylinder
double cylinderVolume(double height, double radius) {
  return pi() * height * (radius * radius);
}

// Volume of a Hemisphere
double hemisphereVolume(double radius) {
  return (2 / 3) * (pi() * radius * radius * radius);
}

// Volume of a Prism
double prismVolume(double baseArea, double height) {
  return baseArea * height;
}

// Volume of a Pyramid
double pyramidVolume(double baseArea, double height) {
  return (1 / 3) * (baseArea * height);
}

// Volume of a Sphere
double sphereVolume(double radius) {
  return (4 / 3) * (pi() * radius * radius * radius);
}
