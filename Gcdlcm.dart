void main() {
  int a = 72;
  int b = 120;

  int gcdResult = gcd(a, b);
  int lcmResult = lcm(a, b);

  print('GCD of $a and $b is: $gcdResult');
  print('LCM of $a and $b is: $lcmResult');
}

// Function to find GCD (Greatest Common Divisor) using Euclidean algorithm
int gcd(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

// Function to find LCM (Least Common Multiple)
int lcm(int a, int b) {
  return (a * b) ~/ gcd(a, b);
}
