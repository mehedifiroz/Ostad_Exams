// Name   : Mehedi Firoz
// email  : mehedifiroz12@gmail.com
// Phone  : +8801785844560

import 'dart:io';

main() {
  triangle();
}

triangle() {
  print('Enter triangle base:');
  double base = double.parse(stdin.readLineSync()!);

  print('Enter triangle  height:');
  double height = double.parse(stdin.readLineSync()!);

  double area = 0.5 * base * height;

  print('Triangle area: $area');
}