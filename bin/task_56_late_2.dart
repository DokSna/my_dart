// Sound Null Safety

/* Модификатор late
1. Late variable - Поздняя переменная
2. Lazy initialization - Ленивая (отложенная) инициализация
3. Late final variables
*/

void main() {
  late var pizza = Pizza().printPizza();
  // print(pizza);
}

class Pizza {
  late int id;
  late String name;
  late double price;

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
