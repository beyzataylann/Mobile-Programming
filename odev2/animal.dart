class Animal {
  int? id;
  String? name;
  String? color;
}

class Cat extends Animal {
  String? sound;

 }

void main() {
  Cat cat = Cat();
  cat.id = 1;
  cat.name = "Napolyon";
  cat.color = "White";
  cat.sound="Miyav";

  print("ID: ${cat.id}");
  print("Name: ${cat.name}");
  print("Color: ${cat.color}");
  print("Sound: ${cat.sound}");
}
