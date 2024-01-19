import 'dart:async';

void main() async {
  List<int> liste = [2, 3, 5, 7, 11];

  print('Liste: $liste');

  List<int> yeniList = await multiplyByTwoAsync(liste);

  print('Çarplmış Liste: $yeniList');
}

Future<List<int>> multiplyByTwoAsync(List<int> liste) async {
  List<int> yeniList = [];

  for (int number in liste) {
    int carpsayi = await multiplyByTwo(number);
    yeniList.add(carpsayi);
  }

  return yeniList;
}

Future<int> multiplyByTwo(int number) async {
  await Future.delayed(Duration(seconds: 1)); 
  return number * 2;
}
