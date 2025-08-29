import 'package:test/test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  group('StringCalculator', () {
    test('should return the number itself for single number', () {
    expect(StringCalculator.add('1'), equals(1));
    });
  });
}