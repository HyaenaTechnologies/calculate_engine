const pi_value = @import("/lib/src/math/constant/pi.zig");

// Area of Objects

// Area of a Circle
pub fn circleArea(radius: f64) f64 {
    return pi_value.pi() * (radius * radius);
}

// Area of a Cube
pub fn cubeArea(length: f64, width: f64) f64 {
    return 6 * (length * width);
}

// Area of a Cylinder
pub fn cylinderArea(height: f64, radius: f64) f64 {
    return (2 * height * pi_value.pi() * radius) + (2 * pi_value.pi() * radius * radius);
}

// Area of a Hemisphere
pub fn hemisphereArea(radius: f64) f64 {
    return 3 * (pi_value.pi() * radius * radius);
}

// Area of a Parallelogram
pub fn parallelogramArea(base: f64, height: f64) f64 {
    return base * height;
}

// Area of a Rectangle
pub fn rectangleArea(length: f64, width: f64) f64 {
    return length * width;
}

// Area of a Sphere
pub fn sphereArea(radius: f64) f64 {
    return 4 * (pi_value.pi() * radius * radius);
}

// Area of a Square
pub fn squareArea(length: f64, width: f64) f64 {
    return length * width;
}

// Area of a Trapezium
pub fn trapeziumArea(base_one: f64, base_two: f64, height: f64) f64 {
    return (1 / 2) * (base_one + base_two) * height;
}

// Area of a Triangle
pub fn triangleArea(base: f64, height: f64) f64 {
    return (1 / 2) * base * height;
}
