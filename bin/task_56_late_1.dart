// Sound Null Safety

/* Модификатор late
1. Late variable - Поздняя переменная
2. Lazy initialization
3. Late final variables
*/

void main() {
  // var pizza = Pizza(1, 'Spring', 10);
  var pizza = Pizza();
  print(pizza.printPizza());
}

class Pizza {
  // Вариант 1
  // инициализируем Non-Nullable переменные
/*
  int id = 1;
  String name = 'Spring';
  double price = 10;
*/
// Вариант 2. С помощью конструктора
  late int id;
  late String name;
  late double price;
/*
  Pizza()
      : id = 1,
        name = 'Spring',
        price = 10;
*/
// Вариант 3. С помощью 'this' в конструкторе
//(инициализация будет при создании экземпляра класса)
  // Pizza(this.id, this.name, this.price);

  // Вариант 4. С помощью 'late' мы можем проинициализировать значения позже,
  // в теле конструктора:
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
