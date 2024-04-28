void main() {
  // Define the maximum number until which Fibonacci series is to be printed
  int maxNumber = 100;

  // Print Fibonacci series up to maxNumber
  print('Fibonacci series up to $maxNumber:');
  fibonacciSeries(maxNumber);
}

// Function to print Fibonacci series up to a given number
void fibonacciSeries(int maxNumber) {
  int first = 0, second = 1;
  int next = first + second;

  // Print the first two numbers of the series
  print(first);
  print(second);

  // Continue generating Fibonacci numbers until next exceeds maxNumber
  while (next <= maxNumber) {
    print(next);
    first = second;
    second = next;
    next = first + second;
  }
}
