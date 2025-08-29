# String Calculator TDD - Dart Implementation

A Dart implementation of the String Calculator following Test-Driven Development (TDD) principles for the Incubyte assessment.

## Features

- ✅ Returns 0 for empty string
- ✅ Handles single numbers
- ✅ Handles comma-separated numbers
- ✅ Handles any amount of numbers
- ✅ Supports new lines as separators
- ✅ Supports custom delimiters with `//[delimiter]\n` format
- ✅ Throws exception for negative numbers
- ✅ Shows all negative numbers in exception message
- ✅ Handles empty entries gracefully

## TDD Process

This project was developed following the red-green-refactor cycle:

1. **Empty string returns 0** - First test case
2. **Single number returns itself** - Basic functionality
3. **Two comma-separated numbers** - Multiple numbers support
4. **Any amount of numbers** - Scalability
5. **New line separators** - Alternative delimiter support
6. **Custom delimiters** - Advanced delimiter configuration
7. **Negative number validation** - Error handling
8. **Multiple negatives in exception** - Comprehensive error messages
9. **Refactoring** - Code quality improvements

## Installation

```bash
git clone https://github.com/your-username/string-calculator-tdd.git
cd string-calculator-tdd
dart pub get