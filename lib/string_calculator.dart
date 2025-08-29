class StringCalculator {
  static int add(String numbers) {
  if (numbers.isEmpty) return 0;
  
  // Replace newlines with commas and then split
  var normalizedNumbers = numbers.replaceAll('\n', ',');
  var numberList = normalizedNumbers.split(',');
  
  return numberList.map(int.parse).reduce((sum, number) => sum + number);
  }
}