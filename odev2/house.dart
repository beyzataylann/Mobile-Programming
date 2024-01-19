class House{
    int? id;
    String? name;
    int? prize;
}
void main(){
   List<House> houses = [];
  //
  House house1 = House();
  house1.id = 1;
  house1.name = "A";
  house1.prize = 150000;
  //
  House house2 = House();
  house2.id = 2;
  house2.name = "B";
  house2.prize = 180000;
  //
  House house3 = House();
  house3.id = 3;
  house3.name = "C";
  house3.prize = 170000;
  
  houses.add(house1);
  houses.add(house2);
  houses.add(house3);

  for (House house in houses) {
    print("House ID: ${house.id}");
    print("Name: ${house.name}");
    print("Prize: ${house.prize}");
    print("   ");
}
}