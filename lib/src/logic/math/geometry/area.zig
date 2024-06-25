const pi_value = @import("../constant/pi.zig");

// Area of Objects
const Area  = struct {
    // Area of a Circle
    pub fn circle(radius: f64) f64 {
        return pi_value.pi() * (radius * radius);
    }

    // Area of a Cube
    pub fn cube(length: f64, width: f64) f64 {
        return 6 * (length * width);
    }

    // Area of a Cylinder
    pub fn cylinder(height: f64, radius: f64) f64 {
        return (2 * height * pi_value.pi() * radius) + (2 * pi_value.pi() * radius * radius);
    }

    // Area of a Hemisphere
    pub fn hemisphere(radius: f64) f64 {
        return 3 * (pi_value.pi() * radius * radius);
    }

    // Area of a Parallelogram
    pub fn parallelogram(base: f64, height: f64) f64 {
        return base * height;
    }

    // Area of a Rectangle
    pub fn rectangle(length: f64, width: f64) f64 {
        return length * width;
    }

    // Area of a Sphere
    pub fn sphere(radius: f64) f64 {
        return 4 * (pi_value.pi() * radius * radius);
    }

    // Area of a Square
    pub fn square(length: f64, width: f64) f64 {
        return length * width;
    }

    // Area of a Trapezium
    pub fn trapezium(baseOne: f64, baseTwo: f64, height: f64) f64 {
        return (1 / 2) * (baseOne + baseTwo) * height;
    }

    // Area of a Triangle
    pub fn triangle(base: f64, height: f64) f64 {
        return (1 / 2) * base * height;
    }
};