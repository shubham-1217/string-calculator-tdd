import 'package:test/test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  group('StringCalculator', () {
    test('should handle any amount of numbers', () {
    expect(StringCalculator.add('1,2,3,4,5'), equals(15));
    });
  });
}