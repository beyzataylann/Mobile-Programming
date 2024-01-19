enum Gender { Male, Female, Other }

class Person {
  
  String? firstName;
  String? lastName;
  Gender? gender;
 
}

void main() {
  Person p1 = Person();
  p1.firstName = "Beyza";
  p1.lastName = "Taylan";
  p1.gender = Gender.Female;

  print(p1.firstName);
  print(p1.lastName);
  if (p1.gender != null) {
      
  
  print(p1.gender.toString().split('.').last.toLowerCase());
    } 

  //
  print("---------------------");
  Person p2 = Person();
    p2.firstName = "Emre";
    p2.lastName = "Kum";
    p2.gender = Gender.Male;

    print(p2.firstName);
    print(p2.lastName);
    if (p2.gender != null) {
    print(p2.gender.toString().split('.').last.toLowerCase());
       
      }
  
}
