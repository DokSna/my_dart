void main() {
  Car car = Car("2", "BMW");
  print(car.id.runtimeType);
  car.move("100");

  print('');

  Car car1 = Car(1, "Ford");
  print(car1.id.runtimeType);
  car1.move(101);

  // int id = car.id;
  // print(id);
}

class Car<T> {
  T id;
  String carName;

  Car(this.id, this.carName);

  // ignore: avoid_shadowing_type_parameters
  void move<T>(T speed) {
    print("The $carName. ID number: $id. Speed car: $speed");
  }
}
