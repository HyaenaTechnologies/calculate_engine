// Volume of Objects
class Volume {
    // Volume of a Cone
    func cone(height: Double, radius: Double) -> Double {
        return (1 / 3) * (pi() * radius * radius) * height
    }

    // Volume of a Cube
    func cube(height: Double, length: Double, width: Double) -> Double {
        return height * length * width
    }

    // Volume of a Cuboid
    func cuboid(height: Double, length: Double, width: Double) -> Double {
        return height * length * width
    }

    // Volume of a Cylinder
    func cylinder(height: Double, radius: Double) -> Double {
        return pi() * height * (radius * radius)
    }

    // Volume of a Hemisphere
    func hemisphere(radius: Double) -> Double {
        return (2 / 3) * (pi() * radius * radius * radius)
    }

    // Volume of a Prism
    func prism(baseArea: Double, height: Double) -> Double {
        return baseArea * height
    }

    // Volume of a Pyramid
    func pyramid(baseArea: Double, height: Double) -> Double {
        return (1 / 3) * (baseArea * height)
    }

    // Volume of a Sphere
    func sphere(radius: Double) -> Double {
        return (4 / 3) * (pi() * radius * radius * radius)
    }
}