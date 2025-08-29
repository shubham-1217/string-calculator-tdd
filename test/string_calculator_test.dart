import 'package:test/test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  group('StringCalculator', () {
    test('should return 0 for empty string', () {
      expect(StringCalculator.add(''), equals(0));
    });

    test('should return the number itself for single number', () {
      expect(StringCalculator.add('1'), equals(1));
    });

    test('should return sum of two comma-separated numbers', () {
      expect(StringCalculator.add('1,5'), equals(6));
    });

    test('should handle any amount of numbers', () {
      expect(StringCalculator.add('1,2,3,4,5'), equals(15));
    });

    test('should handle new lines between numbers', () {
      expect(StringCalculator.add('1\n2,3'), equals(6));
    });

    test('should support custom delimiters', () {
      expect(StringCalculator.add('//;\n1;2'), equals(3));
    });

    test('should throw exception for negative numbers', () {
      expect(() => StringCalculator.add('1,-2,3'), 
          throwsA(predicate((e) => e is FormatException && 
              e.toString().contains('negative numbers not allowed'))));
    });

    test('should show all negative numbers in exception message', () {
      expect(() => StringCalculator.add('1,-2,-3,4'), 
          throwsA(predicate((e) => e is FormatException && 
              e.toString().contains('-2') && 
              e.toString().contains('-3'))));
    });

    test('should handle empty entries', () {
      expect(StringCalculator.add('1,,2'), equals(3));
    });
  });
}