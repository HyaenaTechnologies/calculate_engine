import 'package:calculate_engine/src/logic/pi.dart';

// Area of Objects
class Area {
  // Area of a Circle
  double circle(double radius) {
    return pi() * radius * radius;
  }

  // Area of a Cube
  double cube(double length) {
    return length * length * 6;
  }

  // Area of a Cylinder
  double cylinder(double height, double radius) {
    return (pi() * radius * radius + pi() * radius * height) * 2;
  }

  // Area of a Hemisphere
  double hemisphere(double radius) {
    return pi() * radius * radius * 3;
  }

  // Area of a Parallelogram
  double parallelogram(double base, double height) {
    return base * height;
  }

  // Area of a Rectangle
  double rectangle(double length, double width) {
    return length * width;
  }

  // Area of a Sphere
  double sphere(double radius) {
    return pi() * radius * radius * 4;
  }

  // Area of a Square
  double square(double length) {
    return length * length;
  }

  // Area of a Trapezium
  double trapezium(double baseOne, double baseTwo, double height) {
    return (baseOne + baseTwo) * height / 2;
  }

  // Area of a Triangle
  double triangle(double base, double height) {
    return base * height / 2;
  }
}
