int[] a = {1, 2, 3, 4};
int[] b = {10, 20, 30, 40};
int acounter = 0;
int bcounter = 0;


int[] c = new int[a.length + b.length];

for(int i = 0; i < c.length; i++) {
  if(i%2 == 0) {
    c[i] = a[acounter];
    acounter++;
  } else {
    c[i] = b[bcounter];
    bcounter++;
  }
}

println(c);
