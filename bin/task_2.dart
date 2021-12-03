void main() {
  final int numbers = 555;
  if (0 <= numbers && numbers < 10) {
    print(1);
  } else if (numbers >= 10 && numbers < 100) {
    print(2);
  } else if (numbers >= 100 && numbers < 1000) {
    print(3);
  } else if (numbers >= 1000 && numbers < 10000) {
    print(4);
  } else if (numbers >= 10000 && numbers < 100000) {
    print(5);
  } else if (numbers >= 100000 && numbers < 1000000) {
    print(6);
  } else if (numbers >= 1000000 && numbers < 10000000) {
    print(7);
  } else {
    print('У числа $numbers очень много знаков');
  }
// Вариант решения №2
  int num = 236455;
  int i = 1;
  for (; num > 10; i++) {
    // num = num ~/ 10;
    num ~/= 10;
    print(num);
  }
  print('Количество знаков: $i');
}
/*
Задача 2

Определите количество десятичных цифр в целом числе без знака.

Например, 7 представляет собой одну цифру, 33 имеет 2 цифры, а 129955 имеет 6 цифр.

Условие: использовать length нельзя.

Входные данные:

2

555

236455

Выходные данные:

1

3

6
*/