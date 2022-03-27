void main() {
  Map<String, int> categories = {'Kitchen': 1, 'Bedroom': 2};
  Map<String, int>? nullableMap;  //может быть 'null' или содержать non-null пары
  Map<String, int?> nullableValues;  //может быть 'null' или содержать non-null пары
  Map<String, int?>? nullableMapAndNullableValues;  //может быть 'null' или содержать non-null пары


  print(categories['Room']); //получим null

  int value1 = categories['Room'] ?? 3;
  print(value1);

  //так мы можем сразу присваивать ключ с нужным нам звачением, если приходит null
  int value2 = categories['Room'] ??= 4;
  print(value2);

  // получение значения
  // Вариант 1. Обращение по ключу.
  int? value3 = categories['Kitchen'];
  print(value3);

  // Вариант 2. Если мы уверены что не будет null!
  int value4 = categories['Kitchen']!;
  print(value4);
  print(categories);
}
