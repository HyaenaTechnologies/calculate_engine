import 'package:calculate_engine/src/logic/math/constant/pi.dart';

// Volume of Objects

// Volume of a Cone
double cone_volume(double height, double radius) {
  return (1 / 3) * (pi() * radius * radius) * height;
}

// Volume of a Cube
double cube_volume(double height, double length, double width) {
  return height * length * width;
}

// Volume of a Cuboid
double cuboid_volume(double height, double length, double width) {
  return height * length * width;
}

// Volume of a Cylinder
double cylinder_volume(double height, double radius) {
  return pi() * height * (radius * radius);
}

// Volume of a Hemisphere
double hemisphere_volume(double radius) {
  return (2 / 3) * (pi() * radius * radius * radius);
}

// Volume of a Prism
double prism_volume(double baseArea, double height) {
  return baseArea * height;
}

// Volume of a Pyramid
double pyramid_volume(double baseArea, double height) {
  return (1 / 3) * (baseArea * height);
}

// Volume of a Sphere
double sphere_volume(double radius) {
  return (4 / 3) * (pi() * radius * radius * radius);
}
