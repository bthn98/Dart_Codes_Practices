import 'dart:io';
import 'dart:math';

void main() {
  bool i = true;
  while (true) {
    if (i) {
      print(
          'Welcome to Prime Number Checker.\n\nPlease enter the number you want to check. (q to quit)');
      i = false;
    } else {
      print('\nPlease enter the new number. (q to quit)');
    }
    String? input = stdin.readLineSync();
    if (input == 'q') {
      break;
    }
    int number = int.parse(input!);
    if (number < 2) {
      print('$number is not a Prime number.');
      continue;
    } else if (number == 2) {
      print('$number is a Prime number.');
    } else {
      bool prime = true;
      int limit = sqrt(number).ceil();
      for (int i = 2; i <= limit; i++) {
        if (number % i == 0) {
          prime = false;
          break;
        }
      }
      if (prime) {
        print('$number is a Prime number.');
      } else {
        print('$number is not a Prime number.');
      }
    }
  }
}
