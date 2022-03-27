// Sound Null Safety

/* Модификатор late
1. Late variable
2. Lazy initialization
3. Late final variables
*/

void main() {
  var pizza = Pizza();
  print(pizza.printPizza());
}

class Pizza {
  int id = 1;
  String name = 'Spring';
  double price = 10;

  String printPizza() {
    print('Coocing pizza...');
    return 'Pizza ($id): $name, price: $price';
  }
}
