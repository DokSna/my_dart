void main() {
  var Cubik = Cuboid(10, 20, 30);
  Cubik.infoCub();
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
}
