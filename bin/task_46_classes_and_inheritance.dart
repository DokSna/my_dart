void main() {
  var cuboid_1 = Cuboid(1, 2, 3);
  cuboid_1.volume;
  cuboid_1.surfaceArea;
}

class Cuboid {
  // свойства
  // late int length, width, height; // length, width и height
  late int length;
  late int width;
  late int height;

  // конструктор - инициализирует свойства объекста
  Cuboid(this.length, this.width, this.height);

  // Площадь прямоугольного параллелепипеда S = 2(a · b + a · h + b · h)

  void get surfaceArea {
    int _surfaceArea = 2 * (length * width + length * height + width * height);
    print('Cuboid Surface Area = $_surfaceArea');
  }

  // объём кубоида Volume = length * width * height
  void get volume {
    int _volume = length * width * height;
    print('Cuboid Volume = $_volume');
  }

  void infoCub() {
    print('Длина: $length, ширина: $width, высота: $height.');
  }
}
