class Laptop{
  int? id;
  String? name;
  String? ram;
}
void main(){
  //
  Laptop lap1 = Laptop();
  lap1.id = 1250;
  lap1.name = "Casper";
  lap1.ram = "32GB";
  //
  Laptop lap2 = Laptop();
  lap2.id = 1251;
  lap2.name = "Asus";
  lap2.ram = "16GB";
  //
  Laptop lap3 = Laptop();
  lap3.id = 1255;
  lap3.name = "Hp";
  lap3.ram = "4GB";

  print(lap2.id);
  print(lap2.name);
  print(lap2.ram);

}