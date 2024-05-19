import 'package:calculate_engine/src/logic/pi.dart';

// Volume of Objects
class Volume {
  // Volume of a Cone
  double cone(double height, double radius) {
    return (pi() * height * radius * radius) / 3;
  }

  // Volume of a Cube
  double cube(double length) {
    return length * length * length;
  }

  // Volume of a Cuboid
  double cuboid(double height, double length, double width) {
    return height * length * width;
  }

  // Volume of a Cylinder
  double cylinder(double height, double radius) {
    return pi() * height * radius * radius;
  }

  // Volume of a Hemisphere
  double hemisphere(double radius) {
    return (pi() * radius * radius * radius * 2) / 3;
  }

  // Volume of a Prism
  double prism(double baseArea, double height) {
    return baseArea * height;
  }

  // Volume of a Pyramid
  double pyramid(double baseArea, double height) {
    return (baseArea * height) / 3;
  }

  // Volume of a Sphere
  double sphere(double radius) {
    return (pi() * radius * radius * radius * 4) / 3;
  }
}
