// Sound Null Safety

/* Модификатор late
1. Late variable - Поздняя переменная
2. Lazy initialization - Ленивая (отложенная) инициализация
3. Late final variables
*/

late int global;

void main() {
  var pizza = Pizza();
  // pizza.price = 20;  //с 'final' можно только 1 раз определять 'price'
  print(pizza.printPizza());

  global = 1;
  print(global);
}

class Pizza {
  late int id;
  late String name;
  late final double price;

  Pizza() {
    id = 1;
    name = 'Spring';
    price = 10;
  }

  String printPizza() {
    print('Coocing pizza...');
    return 'Pizza ($id): $name, price: $price';
  }
}
