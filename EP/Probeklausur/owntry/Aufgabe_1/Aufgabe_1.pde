void setup() {
  int[] a = {1, -5, 10, -3};
  int[] b = {-5, -3, -5};
  println(betragSumme(a));
  println(betragSumme(b));
  println();
  println(randomN(2));
  println();
  println(randomN(3));
}


int betragSumme(int[] a) {
  int erg = 0;
  for(int i = 0; i < a.length; i++) {
    if (a[i] < 0) {
      erg += a[i]*-1;
    } else {
      erg += a[i];
    }
  }
  return erg;
}

float[] randomN(int n) {
  float[] ret = new float[n];
  for(int i = 0; i < ret.length; i++) {
    ret[i] = random(10);
  }
  return ret;
}
