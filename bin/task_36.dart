void main() {
  var myCar = Car();
  myCar.carName = 'Ford'; //используется "Сеттер" по умолчанию
  print(myCar.carName); //используется "Геттер" по умолчанию
  myCar.percentage = -23.5; //вызываем собственный "Сеттер"
  print(myCar.percentage); //вызываем собственный "Геттер"
}

class Car {
  late String carName;
  late double _percenrWay;

  set percentage(double per) {
    _percenrWay = (per > 100 || per < 0) ? _percenrWay = 0 : _percenrWay = per;
  }

  double get percentage {
    return _percenrWay;
  }
}
