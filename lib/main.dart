// a) Abstract class Vehicle

abstract class Vehicle {
  // Private variable (encapsulation in Dart is done using underscore)
  int _speed = 0;

  // Abstract method
  void move();

  // setting speed
  void setSpeed(int speed) {
    if (speed >= 0) {
      _speed = speed; //c
    } else {
      print("Speed cannot be negative");
    }
  }

}

// b) Subclass Car

class Car extends Vehicle {
  @override
  void move() {
    print("The car is moving at $_speed km/h");
  }
}
// d) Main function
void main() {
  Car myCar = Car();        // Create object of Car
  myCar.setSpeed(110);      // Setting speed
  myCar.move();             // Call move() method
}
