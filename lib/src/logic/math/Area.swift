// Area of Objects
class Area {
    // Area of a Circle
    func circle(radius: Double) -> Double {
        return pi() * (radius * radius)
    }

    // Area of a Cube
    func cube(length: Double) -> Double {
        return (length * length) * 6
    }

    // Area of a Cylinder
    func cylinder(height: Double, radius: Double) -> Double {
        return (2 * pi() * radius * radius) + (2 * height * pi() * radius)
    }

    // Area of a Hemisphere
    func hemisphere(radius: Double) -> Double {
        (pi() * radius * radius) * 3
    }

    // Area of a Parallelogram
    func parallelogram(base: Double, height: Double) -> Double {
        return base * height
    }

    // Area of a Rectangle
    func rectangle(length: Double, width: Double) -> Double {
        return length * width
    }

    // Area of a Sphere
    func sphere(radius: Double) -> Double {
        return (pi() * radius * radius) * 4
    }

    // Area of a Square
    func square(length: Double) -> Double {
        return length * length
    }

    // Area of a Trapezium
    func trapezium(baseOne: Double, baseTwo: Double, height: Double) -> Double {
        return (baseOne + baseTwo) * height / 2
    }

    // Area of a Triangle
    func triangle(base: Double, height: Double) -> Double {
        return base * height / 2
    }
}