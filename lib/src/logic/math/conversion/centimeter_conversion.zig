// Centimeter Conversion
const CentimeterConversion = struct {
    // Centimeters to Kilometers
    pub fn centimeter_to_kilometer(kilometers: f64) f64 {
        var centimeter: f64 = kilometers * 100000;
        return centimeter;
    }

    // Centimeters to Meters
    pub fn centimeter_to_meter(meter: f64) f64 {
        var centimeter: f64 = meter * 100;
        return centimeter;
    }
};