void main() {
  /*
  Car myCar = Car();
  Car myCar2 = Car();

  myCar.carName = 'BMW';
  myCar.color = 'Black';
  myCar.start();

  myCar2.carName = 'Ford';
  myCar2.color = 'Blue';
  myCar2.start();
  myCar2.stop();
  */
  Car myCar3 = Car('Toyota', color: 'Green');
  myCar3.start();
  Car myCar4 = Car('Mazda');
  myCar4.start();
  Car myCar5 = Car.named();
  myCar5.start();
  Car myCar0 = Car.fromColor('black');
  myCar0.start();
}

class Car {
  late String carName;
  var color;
  // int powers;
// именованые конструкторы
  Car.named() {
    carName = 'Ford';
    color = 'Blue';
  }
  Car.fromColor(var coloric) {
    carName = 'RENO';
    this.color = coloric;
  }
  // Конструктор
  // Car(this.carName, [this.color = 'Red']);
  Car(this.carName, {this.color = 'Red'});
/*
  Car(String carName, var color) {
    this.carName = carName;
    this.color = color;
  }
 */
  void start() {
    print('The $color $carName has started.');
  }

  void stop() {
    print('The $carName has stopped now.');
  }
}
