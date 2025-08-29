import 'package:test/test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  group('StringCalculator', () {
    test('should throw exception for negative numbers', () {
    expect(() => StringCalculator.add('1,-2,3'), 
      throwsA(predicate((e) => e is FormatException && e.toString().contains('negative numbers not allowed'))));
    });
  });
}