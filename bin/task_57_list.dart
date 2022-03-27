// Sound Null Sagety

// ?[] - null-aware оператор доступа по индексу

void main() {
  List<String?> nullableValues = [null, 'London', null, 'Moscow', 'NY'];
  List<String>? nullableList;

  print(nullableList?[0]);

  nullableValues[0] ??= 'SPB';
  print(nullableValues);

  String someString = nullableValues[2] ?? 'Vologda';
  print(someString);
}
