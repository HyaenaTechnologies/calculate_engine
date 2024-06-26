const pi_value = @import("../constant/pi.zig");

// Area of Objects

// Area of a Circle
pub fn circle_area(radius: f64) f64 {
    return pi_value.pi() * (radius * radius);
}

// Area of a Cube
pub fn cube_area(length: f64, width: f64) f64 {
    return 6 * (length * width);
}

// Area of a Cylinder
pub fn cylinder_area(height: f64, radius: f64) f64 {
    return (2 * height * pi_value.pi() * radius) + (2 * pi_value.pi() * radius * radius);
}

// Area of a Hemisphere
pub fn hemisphere_area(radius: f64) f64 {
    return 3 * (pi_value.pi() * radius * radius);
}

// Area of a Parallelogram
pub fn parallelogram_area(base: f64, height: f64) f64 {
    return base * height;
}

// Area of a Rectangle
pub fn rectangle_area(length: f64, width: f64) f64 {
    return length * width;
}

// Area of a Sphere
pub fn sphere_area(radius: f64) f64 {
    return 4 * (pi_value.pi() * radius * radius);
}

// Area of a Square
pub fn square_area(length: f64, width: f64) f64 {
    return length * width;
}

// Area of a Trapezium
pub fn trapezium_area(baseOne: f64, baseTwo: f64, height: f64) f64 {
    return (1 / 2) * (baseOne + baseTwo) * height;
}

// Area of a Triangle
pub fn triangle_area(base: f64, height: f64) f64 {
    return (1 / 2) * base * height;
}
