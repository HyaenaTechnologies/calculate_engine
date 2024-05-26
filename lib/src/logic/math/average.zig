// Average of Objects
pub fn average(values: []f64) f64 {
    var sum = 0.0;
    for (values) |value| {
        sum = sum + value;
    }
    return sum / values.size;
}