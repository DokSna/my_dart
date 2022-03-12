void main() {
  var cuboid = Cuboid(1, 2, 3);
  cuboid.volume;
  cuboid.surfaceArea;

  var cube = Cube(2);
  cube.volume;
  cube.surfaceArea;
}

class Cuboid {
  // свойства
  late int length;
  late int width;
  late int height;
  String nameCub = 'Cuboid';

  // конструктор - инициализирует свойства объекста
  Cuboid(this.length, this.width, this.height);

  // Площадь прямоугольного параллелепипеда S = 2(a · b + a · h + b · h)
  void get surfaceArea {
    int _surfaceArea = 2 * (length * width + length * height + width * height);
    print('$nameCub Surface Area = $_surfaceArea \n');
  }

  // объём кубоида Volume = length * width * height
  void get volume {
    int _volume = length * width * height;
    print('$nameCub Volume = $_volume \n');
  }
}

class Cube extends Cuboid {
  Cube(length) : super(length, length, length) {
    this.nameCub = 'Cube';
  }
}


/*

{
    this.length = super.length;
    this.width = super.length;
    this.height = super.length;
  }
// Формула площади куба: S = 6 * a^2
  void get surfaceArea {
    num _surfaceArea = 6 * length * length;
    print('Cube Surface Area = $_surfaceArea');
  }

  void get volume {
    int _volume = length * length * length;
    print('Cube Volume = $_volume');
  }
  ------
  Cuboid(int length, [int? width, int? height]) {
    this.length = length;
    this.width = width == null ? length: width;
    this.height = height == null ? length: height;
  }

  
  void infoCub() {
    print('Длина: $length, ширина: $width, высота: $height.');
  }

*/