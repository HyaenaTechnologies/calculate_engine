const pi_value = @import("../constant/pi.zig");

// Volume of Objects

// Volume of a Cone
pub fn cone_volume(height: f64, radius: f64) f64 {
    return (1 / 3) * (pi_value.pi() * radius * radius) * height;
}

// Volume of a Cube
pub fn cube_volume(height: f64, length: f64, width: f64) f64 {
    return height * length * width;
}

// Volume of a Cuboid
pub fn cuboid_volume(height: f64, length: f64, width: f64) f64 {
    return height * length * width;
}

// Volume of a Cylinder
pub fn cylinder_volume(height: f64, radius: f64) f64 {
    return pi_value.pi() * height * (radius * radius);
}

// Volume of a Hemisphere
pub fn hemisphere_volume(radius: f64) f64 {
    return (2 / 3) * (pi_value.pi() * radius * radius * radius);
}

// Volume of a Prism
pub fn prism_volume(baseArea: f64, height: f64) f64 {
    return baseArea * height;
}

// Volume of a Pyramid
pub fn pyramid_volume(baseArea: f64, height: f64) f64 {
    return (1 / 3) * (baseArea * height);
}

// Volume of a Sphere
pub fn sphere_volume(radius: f64) f64 {
    return (4 / 3) * (pi_value.pi() * radius * radius * radius);
}