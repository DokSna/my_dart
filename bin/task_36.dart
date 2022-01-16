void main() {
  var myCar = Car(); //используется "Сеттер" по умолчанию
  myCar.carName = 'Ford'; //используется "Геттер" по умолчанию
  print(myCar.carName);
  myCar.percentage = -23.5; //вызываем собственный "Сеттер"
  print(myCar.percentage); //вызываем собственный "Геттер"
}

class Car {
  late String carName;
  late double _percenrWay;

  void set percentage(double per) {
    _percenrWay = (per > 100 || per < 0) ? _percenrWay = 0 : _percenrWay = per;
  }

  double get percentage {
    return _percenrWay;
  }
}
