void setup() {
  println(zehnerreihe(2));
  println();
  println(zehnerreihe(5));
}

int[] zehnerreihe(int n) {

  int[] ret = new int[n];
  for (int i = 1; i < ret.length + 1; i++) {
    ret[i-1] = i * 10;
  }
  return ret;
}
