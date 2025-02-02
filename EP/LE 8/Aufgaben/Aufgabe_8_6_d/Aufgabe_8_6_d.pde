void setup() {
  KlausurNote[] noten = new KlausurNote[3];
  noten[0] = new KlausurNote("Fred", 3);
  noten[1] = new KlausurNote("Susi", 1);
  noten[2] = new KlausurNote("Thore", 2);


  for (int i = 0; i < noten.length; i++) {
    println(noten[i].student + " hat eine " + noten[i].note);
  }

  tweakNote(noten, 1);

  for (int i = 0; i < noten.length; i++) {
    println(noten[i].student + " hat eine " + noten[i].note);
  }
}

void tweakNote(KlausurNote[] kn, int zahl) {
  for (int i = 0; i < kn.length; i++) {
    kn[i].note = zahl;
  }
}
