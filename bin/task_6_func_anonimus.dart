void main() {
  List<String> list_1 = ['a', 'ab', 'abc'];
  List<String> list_2 = ['abcde', 'ab', 'abc'];
  List<String> list_3 = [];
  int num_1 = sumElements(list_1);
  print(num_1);
  int num_2 = sumElements(list_2);
  print(num_2);
  int num_3 = sumElements(list_3);
  print(num_3);
}

int sumElements(List listNum) {
  int numCheck = 0;
  for (String el in listNum) {
    numCheck = numCheck + el.length;
  }
  return numCheck;
}
/*
ДЗ по анонимным функциям
Задача 1.

Вы получите список строк. Ваша задача вернуть сумму длинны всех строк в списке.

Пример: ['a', 'ab', 'abc'] => 1 + 2 + 3 = 6

Условия:

1. Список может быть пустым, в этом случае возвращаем 0.

Входные данные:

['a', 'ab', 'abc']

['abcde', 'ab', 'abc']

[]

Выходные данные:

['a', 'ab', 'abc'] => 6

['abcde', 'ab', 'abc'] => 10

[] => 0
*/