import 'package:calculate_engine/src/logic/math/constant/pi.dart';

// Volume of Objects
class Volume {
  // Volume of a Cone
  double cone(double height, double radius) {
    return (1 / 3) * (pi() * radius * radius) * height;
  }

  // Volume of a Cube
  double cube(double height, double length, double width) {
    return height * length * width;
  }

  // Volume of a Cuboid
  double cuboid(double height, double length, double width) {
    return height * length * width;
  }

  // Volume of a Cylinder
  double cylinder(double height, double radius) {
    return pi() * height * (radius * radius);
  }

  // Volume of a Hemisphere
  double hemisphere(double radius) {
    return (2 / 3) * (pi() * radius * radius * radius);
  }

  // Volume of a Prism
  double prism(double baseArea, double height) {
    return baseArea * height;
  }

  // Volume of a Pyramid
  double pyramid(double baseArea, double height) {
    return (1 / 3) * (baseArea * height);
  }

  // Volume of a Sphere
  double sphere(double radius) {
    return (4 / 3) * (pi() * radius * radius * radius);
  }
}
