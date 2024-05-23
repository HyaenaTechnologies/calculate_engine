// Volume of Objects
class Volume {
    // Volume of a Cone
    func cone(height: Double, radius: Double) -> Double {
        return (pi() * height * radius * radius) / 3
    }

    // Volume of a Cube
    func cube(length: Double) -> Double {
        return length * length * length
    }

    // Volume of a Cuboid
    func cuboid(height: Double, length: Double, width: Double) -> Double {
        return height * length * width
    }

    // Volume of a Cylinder
    func cylinder(height: Double, radius: Double) -> Double {
        return pi() * height * radius * radius
    }

    // Volume of a Hemisphere
    func hemisphere(radius: Double) -> Double {
        return (pi() * radius * radius * radius * 2) / 3
    }

    // Volume of a Prism
    func prism(baseArea: Double, height: Double) -> Double {
        return baseArea * height
    }

    // Volume of a Pyramid
    func pyramid(baseArea: Double, height: Double) -> Double {
        return (baseArea * height) / 3
    }

    // Volume of a Sphere
    func sphere(radius: Double) -> Double {
        return (pi() * radius * radius * radius * 4) / 3
    }
}