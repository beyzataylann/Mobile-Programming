import 'dart:io';

class Soru {
  String soru;
  bool Cevap;

  Soru(this.soru, this.Cevap);
}

class Quiz {
  List<Soru> sorular;
  int Index = 0;
  int puan = 0;

  Quiz(this.sorular);

  bool bittiMi() {
    return Index == sorular.length ;
  }

  void sonrakiSoru() {
    if (!bittiMi()) {
      Index++;
    }
  }
 void cevapla(bool kullaniciCevabi) {
    if (kullaniciCevabi == sorular[Index].Cevap) {
      print('Doğru!');
      puan++;
    } else {
      print('Yanlış!');
    }
    sonrakiSoru();
  }

  void skoruGoster() {
    print('Puanınız: $puan/${sorular.length}');
  }
}

void main() {
  List<Soru> sorular = [
    Soru('Dart, dili sınıf-temelli, tekil-kalıtımlı C-tarzında bir kod dizilimine sahiptir.', true),
    Soru('Dart, statik tipli bir dildir.', false),
    Soru('Dart, Java geliştirmesi için kullanılan bir dilidir.', false),
    Soru('Dart, Dart programlama dilinden 5 ana veri tipi vardır.', true),

  ];

  Quiz quiz = Quiz(sorular);

  while (!quiz.bittiMi()) {
    print('Soru ${quiz.Index + 1}: ${sorular[quiz.Index].soru}');
    String kullaniciCevabi = stdin.readLineSync()!.toLowerCase();

    if (kullaniciCevabi == 'true' || kullaniciCevabi == 'false') {
      quiz.cevapla(kullaniciCevabi == 'true');
    } else {
      print('Geçersiz giriş. Lütfen true veya false girin.');
    }
  }

  quiz.skoruGoster();
}
