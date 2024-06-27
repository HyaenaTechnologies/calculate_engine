const pi_value = @import("../constant/pi.zig");

// Volume of Objects

// Volume of a Cone
pub fn coneVolume(height: f64, radius: f64) f64 {
    return (1 / 3) * (pi_value.pi() * radius * radius) * height;
}

// Volume of a Cube
pub fn cubeVolume(height: f64, length: f64, width: f64) f64 {
    return height * length * width;
}

// Volume of a Cuboid
pub fn cuboidVolume(height: f64, length: f64, width: f64) f64 {
    return height * length * width;
}

// Volume of a Cylinder
pub fn cylinderVolume(height: f64, radius: f64) f64 {
    return pi_value.pi() * height * (radius * radius);
}

// Volume of a Hemisphere
pub fn hemisphereVolume(radius: f64) f64 {
    return (2 / 3) * (pi_value.pi() * radius * radius * radius);
}

// Volume of a Prism
pub fn prismVolume(base_area: f64, height: f64) f64 {
    return base_area * height;
}

// Volume of a Pyramid
pub fn pyramidVolume(base_area: f64, height: f64) f64 {
    return (1 / 3) * (base_area * height);
}

// Volume of a Sphere
pub fn sphereVolume(radius: f64) f64 {
    return (4 / 3) * (pi_value.pi() * radius * radius * radius);
}