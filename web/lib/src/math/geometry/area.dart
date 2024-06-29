import 'package:calculate_engine/src/math/constant/pi.dart';

// Area of Objects

// Area of a Circle
double circleArea(double radius) {
  return pi() * (radius * radius);
}

// Area of a Cube
double cubeArea(double length, double width) {
  return 6 * (length * width);
}

// Area of a Cylinder
double cylinderArea(double height, double radius) {
  return (2 * height * pi() * radius) + (2 * pi() * radius * radius);
}

// Area of a Hemisphere
double hemisphereArea(double radius) {
  return 3 * (pi() * radius * radius);
}

// Area of a Parallelogram
double parallelogramArea(double base, double height) {
  return base * height;
}

// Area of a Rectangle
double rectangleArea(double length, double width) {
  return length * width;
}

// Area of a Sphere
double sphereArea(double radius) {
  return 4 * (pi() * radius * radius);
}

// Area of a Square
double squareArea(double length, double width) {
  return length * width;
}

// Area of a Trapezium
double trapeziumArea(double baseOne, double baseTwo, double height) {
  return (1 / 2) * (baseOne + baseTwo) * height;
}

// Area of a Triangle
double triangleArea(double base, double height) {
  return (1 / 2) * base * height;
}
