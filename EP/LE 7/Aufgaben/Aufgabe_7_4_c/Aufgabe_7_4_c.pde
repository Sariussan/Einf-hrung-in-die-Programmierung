void setup() {
  float[] test = { 5, -13, 32.5, -5.1, 0 };
  println(firstNegative(test));
  println(lastNegative(test));
}

float firstNegative(float[] arr) {
  float current = 0.0;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] < 0) {
      current = arr[i];
      return current;
    }
  }
  return current;
}

float lastNegative(float[] arr) {
  float current = 0.0;
  for (int i = arr.length-1; i >= 0; i--) {
    if (arr[i] < 0) {
      current = arr[i];
      return current;
    }
  }
  return current; 
}
