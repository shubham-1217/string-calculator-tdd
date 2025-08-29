import 'package:test/test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  group('StringCalculator', () {
    test('should show all negative numbers in exception message', () {
    expect(() => StringCalculator.add('1,-2,-3,4'), 
      throwsA(predicate((e) => e is FormatException && 
          e.toString().contains('-2') && 
          e.toString().contains('-3'))));
    });
  });
}