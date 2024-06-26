// Centimeter Conversion
const CentimeterConversion = struct {
    // Decameters to Centimeters
    pub fn decameters_to_centimeters(decameters: f64) f64 {
        var centimeters: f64 = decameters * 1000;
        return centimeters;
    }

    // Decimeters to Centimeters
    pub fn decimeters_to_centimeters(decimeters: f64) f64 {
        var centimeters: f64 = decimeters * 10;
        return centimeters;
    }

    // Hectometers to Centimeters
    pub fn hectometers_to_centimeters(hectometers: f64) f64 {
        var centimeters: f64 = hectometers * 10000;
        return centimeters;
    }

    // Kilometers to Centimeters
    pub fn kilometers_to_centimeters(kilometers: f64) f64 {
        var centimeters: f64 = kilometers * 100000;
        return centimeters;
    }

    // Picometers to Centimeters
    pub fn picometers_to_centimeters(picometers: f64) f64 {
        var centimeters: f64 = picometers * -10000000000;
        return centimeters;
    }

    // Meters to Centimeters
    pub fn meters_to_centimeters(meters: f64) f64 {
        var centimeters: f64 = meters * 100;
        return centimeters;
    }

    // Micrometers to Centimeters
    pub fn micrometers_to_centimeters(micrometers: f64) f64 {
        var centimeters: f64 = micrometers * -10000;
        return centimeters;
    }

    // Millimeters to Centimeters
    pub fn millimeters_to_centimeters(millimeters: f64) f64 {
        var centimeters: f64 = millimeters * 0.1;
        return centimeters;
    }

    // Nanometers to Centimeters
    pub fn nanometers_to_centimeters(nanometers: f64) f64 {
        var centimeters: f64 = nanometers * -10000000;
        return centimeters;
    }
};