import 'package:calculate_engine/src/logic//math/pi.dart';

// Area of Objects
class Area {
  // Area of a Circle
  double circle(double radius) {
    return pi() * (radius * radius);
  }

  // Area of a Cube
  double cube(double length, double width) {
    return 6 * (length * width);
  }

  // Area of a Cylinder
  double cylinder(double height, double radius) {
    return (2 * height * pi() * radius) + (2 * pi() * radius * radius);
  }

  // Area of a Hemisphere
  double hemisphere(double radius) {
    return 3 * (pi() * radius * radius);
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
    return 4 * (pi() * radius * radius);
  }

  // Area of a Square
  double square(double length, double width) {
    return length * width;
  }

  // Area of a Trapezium
  double trapezium(double baseOne, double baseTwo, double height) {
    return (1 / 2) * (baseOne + baseTwo) * height;
  }

  // Area of a Triangle
  double triangle(double base, double height) {
    return (1 / 2) * base * height;
  }
}
