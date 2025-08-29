class StringCalculator {
  static int add(String numbers) {
  if (numbers.isEmpty) return 0;
  
  String delimiter = ',';
  String numbersToProcess = numbers;
  
  // Check for custom delimiter
  if (numbers.startsWith('//')) {
    final delimiterEndIndex = numbers.indexOf('\n');
    delimiter = numbers.substring(2, delimiterEndIndex);
    numbersToProcess = numbers.substring(delimiterEndIndex + 1);
  }
  
  // Replace newlines with current delimiter
  var normalizedNumbers = numbersToProcess.replaceAll('\n', delimiter);
  var numberList = normalizedNumbers.split(delimiter);
  
  return numberList.map(int.parse).reduce((sum, number) => sum + number);
  }
}