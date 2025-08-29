import 'package:test/test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  group('StringCalculator', () {
    test('should support custom delimiters', () {
    expect(StringCalculator.add('//;\n1;2'), equals(3));
    });
  });
}