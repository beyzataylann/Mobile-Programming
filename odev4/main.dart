import 'dart:async';
import 'dart:io';

void main() {

  stdout.write('İlk sayıyı giriniz: ');
  int firstNumber = int.parse(stdin.readLineSync()!);

  stdout.write('İkinci sayıyı giriniz: ');
  int secondNumber = int.parse(stdin.readLineSync()!);

  
  sum(firstNumber, secondNumber);
}

Future<void> sum(int a, int b) async {
  await Future.delayed(Duration(seconds: 3));

  int sum = a + b;

  print('Toplam: $sum');
}
