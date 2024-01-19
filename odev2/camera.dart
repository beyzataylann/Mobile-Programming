class Camera {

  int _id;
  String _brand;
  String _color;
  double _price;


  Camera(this._id, this._brand, this._color, this._price);

  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get price => _price;

  set id(int value) => _id = value;
  set brand(String value) => _brand = value;
  set color(String value) => _color = value;
  set price(double value) => _price = value;
}

void main() {
  
  Camera camera1 = Camera(1, "Canon", "Siyah", 1000);
 
  print("Camera 1:");
  print("ID: ${camera1.id}");
  print("Brand: ${camera1.brand}");
  print("Color: ${camera1.color}");
  print("Price: \$${camera1.price}");
  print("");
  
  Camera camera2 = Camera(2, "Canon", "Gri", 1500);
  
  print("Camera 2:");
  print("ID: ${camera2.id}");
  print("Brand: ${camera2.brand}");
  print("Color: ${camera2.color}");
  print("Price: \$${camera2.price}");
  print("");
  
  
  Camera camera3 = Camera(3, "Sony", "Beyaz", 2500);
  
  print("Camera 3:");
  print("ID: ${camera3.id}");
  print("Brand: ${camera3.brand}");
  print("Color: ${camera3.color}");
  print("Price: \$${camera3.price}");
}
