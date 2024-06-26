import 'package:calculate_engine/src/logic/math/constant/pi.dart';

// Area of Objects

// Area of a Circle
double circle_area(double radius) {
  return pi() * (radius * radius);
}

// Area of a Cube
double cube_area(double length, double width) {
  return 6 * (length * width);
}

// Area of a Cylinder
double cylinder_area(double height, double radius) {
  return (2 * height * pi() * radius) + (2 * pi() * radius * radius);
}

// Area of a Hemisphere
double hemisphere_area(double radius) {
  return 3 * (pi() * radius * radius);
}

// Area of a Parallelogram
double parallelogram_area(double base, double height) {
  return base * height;
}

// Area of a Rectangle
double rectangle_area(double length, double width) {
  return length * width;
}

// Area of a Sphere
double sphere_area(double radius) {
  return 4 * (pi() * radius * radius);
}

// Area of a Square
double square_area(double length, double width) {
  return length * width;
}

// Area of a Trapezium
double trapezium_area(double baseOne, double baseTwo, double height) {
  return (1 / 2) * (baseOne + baseTwo) * height;
}

// Area of a Triangle
double triangle_area(double base, double height) {
  return (1 / 2) * base * height;
}
