//write a dart program to read list of integers and print only even numbers (in online compliers you cannot use stdin hence providing a predefined list)

void main() {
  // Predefined list of integers (for demonstration)
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  
  // Filter out even numbers
  List<int> evenNumbers = numbers.where((number) => number % 2 == 0).toList();
  
  // Print the even numbers
  print('Even numbers:');
  for (int evenNumber in evenNumbers) {
    print(evenNumber);
  }
}
