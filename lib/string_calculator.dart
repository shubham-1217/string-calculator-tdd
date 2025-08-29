class StringCalculator {
  static int add(String numbers) {
  if (numbers.isEmpty) return 0;
  
  var numberList = numbers.split(',');
  return numberList.map(int.parse).reduce((sum, number) => sum + number);
  }
}