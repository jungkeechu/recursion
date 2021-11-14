int factorial( int n ) {
  int i, fact=1;
  for (i=1; i<=n; i++) {
    fact = fact * i;
  }
  return fact;
}

int factorial2( int n ) {
  if (n <= 1) return 1;
  else return n * factorial2( n-1 );
}

void setup(){
  println(factorial(2));
}
