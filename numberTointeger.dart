//WAP to accept numbers and return its equivalent integer (This code works only for numbers till 99)

void main() {
  // Example usage:
  int number = 53; // You can set your integer here
  
  // Convert the number to words
  print("Equivalent in words: ${convertToWords(number)}");
}

String convertToWords(int number) {
  List<String> units = [
    "", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"
  ];

  List<String> teens = [
    "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen",
    "Seventeen", "Eighteen", "Nineteen"
  ];

  List<String> tens = [
    "", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"
  ];

  if (number < 10) {
    return units[number];
  } else if (number < 20) {
    return teens[number - 10];
  } else if (number < 100) {
    return "${tens[number ~/ 10]} ${units[number % 10]}".trim();
  } else {
    return "Number out of range for this simple example.";
  }
}
