// функция main запускается по умолчанию
void main() {
  // массив/список listOfStrings содержит входящие данные
  List<String> listOfStrings = ["dart", "abc", "good luck"];

  // С помощью набора функций, сделаем декомпозицию задачи.
  print(stringConversion(listOfStrings));
}

// в качестве параметра функция получает список со строками
List stringConversion(arrayOfStrings) { //а вернет список с числами
  List numList = <int>[];
  for (int i = 0; i < arrayOfStrings.length; i++) {
    // функция будет обходить "символы в строке" и возвращать число,
    // а мы это число умножим на позицию строки в списке arrayOfStrings
    numList.add(charactersInLine(arrayOfStrings[i]) * (i + 1));
  }
  return numList;
}

int numAbc(String elNumAbc) { //String приходит, int уходит :)
  switch (elNumAbc) {
    case 'a':
      return 1;
    case 'b':
      return 2;
    case 'c':
      return 3;
    case 'd':
      return 4;
    case 'e':
      return 5;
    case 'f':
      return 6;
    case 'g':
      return 7;
    case 'h':
      return 8;
    case 'i':
      return 9;
    case 'j':
      return 10;
    case 'k':
      return 11;
    case 'l':
      return 12;
    case 'm':
      return 13;
    case 'n':
      return 14;
    case 'o':
      return 15;
    case 'p':
      return 16;
    case 'q':
      return 17;
    case 'r':
      return 18;
    case 's':
      return 19;
    case 't':
      return 20;
    case 'u':
      return 21;
    case 'v':
      return 22;
    case 'w':
      return 23;
    case 'x':
      return 24;
    case 'y':
      return 25;
    case 'z':
      return 26;
    default:
      return 0;
  }
}

int charactersInLine(elString) {
  // разобьем строку на массив из ее символов методом .split('')
  List<dynamic> abcList = elString.split('');
  // abcList = [d, a, r, t]

  // для каждого знака в списке (кроме пробелов), вернем его позицию в алфавите
  // а затем прибавим к сумме позиций букв в строке
  int sumPlace = 0;
  for (int i = 0; i < abcList.length; i++) {
    if (abcList[i] != ' ') {
      sumPlace = sumPlace + numAbc(abcList[i]);
    }
  }
  return sumPlace;
}

// ДЗ по функциям
// Задача

// Вам дана строка «abc» и предполагая, что каждая буква в строке имеет значение,
//равное ее позиции в алфавите, то наша строка будет иметь значение 1 + 2 + 3 = 6.
//Это означает, что: a = 1, b = 2, c = 3 .... z = 26.

// Вам будет предоставлен список строк, и ваша задача будет вернуть значения строк,
//умноженные на позицию этой строки в списке. Позиция начинается с 1.

// Например: wordValue ["abc", "abc abc"] должно вернуть [6, 24] или [6 * 1, 12 * 2].
//Обратите внимание, что пробелы игнорируются. «abc» имеет значение 6, а «abc abc» - значение 12.
//Теперь значение в позиции 1 умножается на 1, а значение в позиции 2 умножается на 2.
//Ввод будет содержать только строчные буквы и пробелы.

// Входные данные:

// Дан список строк - ["dart", "abc", "good luck"]

// Выходные данные:

// Вы должны получить список со значениями – [43, 12, 264]
