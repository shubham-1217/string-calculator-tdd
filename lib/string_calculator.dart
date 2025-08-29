class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) return 0;
    
    final (delimiter, numbersToProcess) = _parseDelimiter(numbers);
    final numberList = _parseNumbers(numbersToProcess, delimiter);
    _validateNoNegatives(numberList);
    
    return numberList.fold(0, (sum, number) => sum + number);
  }
  
  static (String, String) _parseDelimiter(String numbers) {
    if (numbers.startsWith('//')) {
      final delimiterEndIndex = numbers.indexOf('\n');
      final delimiter = numbers.substring(2, delimiterEndIndex);
      final numbersToProcess = numbers.substring(delimiterEndIndex + 1);
      return (delimiter, numbersToProcess);
    }
    return (',', numbers);
  }
  
  static List<int> _parseNumbers(String numbers, String delimiter) {
    final normalizedNumbers = numbers.replaceAll('\n', delimiter);
    return normalizedNumbers
        .split(delimiter)
        .where((numStr) => numStr.isNotEmpty)
        .map(int.parse)
        .toList();
  }
  
  static void _validateNoNegatives(List<int> numbers) {
    final negatives = numbers.where((number) => number < 0).toList();
    if (negatives.isNotEmpty) {
      throw FormatException(
        'negative numbers not allowed ${negatives.map((n) => n.toString()).join(',')}'
      );
    }
  }
}