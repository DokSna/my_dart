void main() {
  var cuboid_1 = Cuboid(1, 2, 3);
  cuboid_1.infoCub();
  print(cuboid_1.surfaceArea);
  print(cuboid_1.volume);
}

class Cuboid {
  // свойства
  // late int length, width, height; // length, width и height
  late int length;
  late int width;
  late int height;

  // конструктор - инициализирует свойства объекста
  Cuboid(this.length, this.width, this.height);

  void infoCub() {
    print('Длина: $length, ширина: $width, высота: $height.');
  }

  // Площадь прямоугольного параллелепипеда S = 2(a · b + a · h + b · h)
  // SurfaceArea

  int get surfaceArea {
    int _surfaceArea = 2 * (length * width + length * height + width * height);
    return _surfaceArea;
  }

  // объём кубоида Volume = length * width * height
  int get volume {
    return length * width * height;
  }
}
