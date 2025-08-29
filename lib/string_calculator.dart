class StringCalculator {
  static int add(String numbers) {
  if (numbers.isEmpty) return 0;
  
  var numberList = numbers.split(',');
  if (numberList.length == 1) return int.parse(numbers);
  
  return numberList.map(int.parse).reduce((sum, number) => sum + number);
  }
}