import 'dart:io';

double calculate({required double number1, required String islem, double number2 = 0.0}) {
  switch (islem) {
    case '+':
      return number1 + number2;
    case '-':
      return number1 - number2;
    case '*':
      return number1 * number2;
    case '/':
      if (number2 == 0) {
        throw ArgumentError('Sıfıra bölme hatası');
      }
      return number1 / number2;
    default:
      throw ArgumentError('Geçersiz işlem');
  }
}

void main() {
  do {
    print("Çıkmak için 0'a, devam etmek için 1'e basın ");
    int exit = int.parse(stdin.readLineSync()!);

    if (exit == 0) {
      break;
    }

    print("İlk sayıyı girin:");
    double num1 = double.parse(stdin.readLineSync()!);

    print("Hesap makinesi işlemi girin (+, -, *, /):");
    String isl = stdin.readLineSync()!;

    double num2 = 0.0; 
    print("İkinci sayıyı girin (boş bırakmak için Enter'a basın):");
    String num2Input = stdin.readLineSync()!;
    if (num2Input.isNotEmpty) {
      num2 = double.parse(num2Input);
    }

    double Sonuc = calculate(number1: num1, islem: isl, number2: num2);
    print("Sonuç: $Sonuc");
  } while (true);
}
