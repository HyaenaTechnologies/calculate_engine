// Average of Objects
double average(List<double> values) {
  double sum = 0.0;
  for (double value in values) {
    sum = sum + value;
  }
  return sum / values.length;
}
