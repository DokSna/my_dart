import 'package:universal_html/html.dart'; // вместо import 'dart:html';

void main() {
  print('The Main programm: Starts');
  printFileContent();
  print('The Main programm: Ends');
}

printFileContent() async {
  try {
    String time =
        await HttpRequest.getString('https://rebounce.online/api/time');
    print(time);

    String fileContent = await downloadFile();
    print('The content on the file is --> $fileContent');

    String time1 =
        await HttpRequest.getString('https://rebounce.online/api/time');
    print(time1);

  } catch (error) {
    print('Catching error: $error');
  }
}

Future<String> downloadFile() {
  Future<String> result = Future.delayed(Duration(seconds: 5), () {
    return HttpRequest.getString('https://dart.dev/f/dailyNewsDigest.txt');
  });

  return result;
}

  // Future ("Future API" & "async / await")

  // Future API

  // 1) Синхронная функция - возвращает обычный результат.
  // Пример: return String, return int и т.д.

  // 2) Асинхронная функция - возвращает объект Future (futures).
  // Пример: return Future<String>, return Future<int> и т.д.

  // Ссылка на текстовый файл - http://dart.dev/f/dailyNewsDigest.txt

  // Ссылка на сервер со временем - http://rebounce.online/api/time
