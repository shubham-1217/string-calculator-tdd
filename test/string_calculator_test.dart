import 'package:test/test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  group('StringCalculator', () {
    test('should return sum of two comma-separated numbers', () {
    expect(StringCalculator.add('1,5'), equals(6));
    });
  });
}