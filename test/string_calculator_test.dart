import 'package:test/test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  group('StringCalculator', () {
    test('should handle new lines between numbers', () {
    expect(StringCalculator.add('1\n2,3'), equals(6));
    });
  });
}