// Area of Objects
class Area {
    // Area of a Circle
    func circle(radius: Double) -> Double {
        return pi() * (radius * radius)
    }

    // Area of a Cube
    func cube(length: Double, width: Double) -> Double {
        return 6 * (length * width)
    }

    // Area of a Cylinder
    func cylinder(height: Double, radius: Double) -> Double {
        return (2 * height * pi() * radius) + (2 * pi() * radius * radius) 
    }

    // Area of a Hemisphere
    func hemisphere(radius: Double) -> Double {
        return 3 * (pi() * radius * radius)
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
        return 4 * (pi() * radius * radius) 
    }

    // Area of a Square
    func square(length: Double, width: Double) -> Double {
        return length * width
    }

    // Area of a Trapezium
    func trapezium(baseOne: Double, baseTwo: Double, height: Double) -> Double {
        return (1 / 2) * (baseOne + baseTwo) * height
    }

    // Area of a Triangle
    func triangle(base: Double, height: Double) -> Double {
        return (1 / 2) * base * height
    }
}