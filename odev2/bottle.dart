abstract class Bottle {
  void open();
}

class CakeBottle implements Bottle {
  @override
  void open() {
    print('Coke bottle is opened');
  }
}
  void main(){
    var cake = CakeBottle();
    cake.open();
  }