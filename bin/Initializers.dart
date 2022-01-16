// 35. Инициализаторы
// ignore_for_file: file_names

void main() {
  var myCar = Car(name: 'BMW', per: 24.6);
  myCar.infoCar();
}

class Car {
  String carName;
  double percentWay;

  Car({String name = '', double per = 0})
      : carName = name,
        percentWay = per.roundToDouble() {
    print('Other Work');
    percentWay = 100;
  }

  void infoCar() {
    print('The $carName drove $percentWay of the way');
  }
}
