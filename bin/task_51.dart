// Sound Null Safety

// Dart - типобезопасный (type-safe) язык.

// В основе Null Safety лежат 3 принципа:
// 1. Non-nullable by default
// 2. Fully Sound
// 3. Incrementally adoptable

void main() {
  int? age; // nullable
  var name;
  print(name);
  print(age);
}
