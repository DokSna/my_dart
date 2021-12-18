void main() {
  // Входные данные, наш список значений
  List<dynamic> myList = [60, 999, 14, "dart1", 45, 95, "dart", 1];

  // Искомое значение
  var myValue = 'dart';

  // переменная isPresent покажет - есть ли искомое значение в списке
  bool isPresent = false;
  bool isPresent2 = false;
  bool isPresent3 = false;

  // вариант №1
  for (int i = 0; i < myList.length; i++) {
    if (myList[i] == myValue) {
      isPresent = true;
      break;
    }
  }
  // вариант №2
  for (var element in myList) {
    switch(element) {
      case '15':
      isPresent2 = true;
      break;
    }
  }
  // вариант №3
  // myList.forEach((element) => element == myValue ? isPresent3 = true : isPresent3 = isPresent3 );
  print(isPresent);
  print(isPresent2);
  print(isPresent3);
}
// ДЗ по коллекциям
// Задача

// Вам будет дан список (list) и значение (value). 
//Все, что вам нужно сделать, это проверить, содержит ли предоставленный список данное значение.
// Список может содержать числа или строки. Value должно возвращать true, 
//если список содержит значение, и false, если нет. Запрещено использовать indexOf.

// Входные данные:
// Список = [60, 999, 14, "dart1", 45, 95, "dart", 1]
// Значение = “dart”
// Значение = 15;

// Выходные данные:
// true
// false