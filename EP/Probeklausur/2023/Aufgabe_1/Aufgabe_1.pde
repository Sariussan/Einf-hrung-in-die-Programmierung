void setup() {
  println(replaceXXX("Ich bin aus XXX gekommen.", "Hamburg"));
  println(replaceXXX("Nach XXX fahre ich.", "München"));
  float[] n1 = { 1.3, 2, 1, 3.3 };
  float[] n2 = { 4, 2.3, 3.7, 4, 4 };
  println(notenschnitt("Lara", n1));
  println(notenschnitt("Marvin", n2));
}

String replaceXXX(String satz, String ersatz) {
  int x = satz.indexOf("XXX");
  return satz.substring(0, x) + ersatz + satz.substring(x+3, satz.length());
}

String notenschnitt(String name, float[] noten) {
  float sum = 0;
  for(int i = 0; i < noten.length; i++) {
    sum += noten[i];
  }
  
  float d = sum/ noten.length;
  
  return(name + ", dein Notenschnitt ist " + d);
}
