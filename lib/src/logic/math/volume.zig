const pi_value = @import("./pi.zig");

// Volume of Objects
const Volume = struct {
    // Volume of a Cone
    pub fn cone(height: f64, radius: f64) f64 {
        return (1 / 3) * (pi_value.pi() * radius * radius) * height;
    }

    // Volume of a Cube
    pub fn cube(height: f64, length: f64, width: f64) f64 {
        return height * length * width;
    }

    // Volume of a Cuboid
    pub fn cuboid(height: f64, length: f64, width: f64) f64 {
        return height * length * width;
    }

    // Volume of a Cylinder
    pub fn cylinder(height: f64, radius: f64) f64 {
        return pi_value.pi() * height * (radius * radius);
    }

    // Volume of a Hemisphere
    pub fn hemisphere(radius: f64) f64 {
        return (2 / 3) * (pi_value.pi() * radius * radius * radius);
    }

    // Volume of a Prism
    pub fn prism(baseArea: f64, height: f64) f64 {
        return baseArea * height;
    }

    // Volume of a Pyramid
    pub fn pyramid(baseArea: f64, height: f64) f64 {
        return (1 / 3) * (baseArea * height);
    }

    // Volume of a Sphere
    pub fn sphere(radius: f64) f64 {
        return (4 / 3) * (pi_value.pi() * radius * radius * radius);
    }
};