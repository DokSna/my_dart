// Sound Null Safety
// Type System: Non-nullable & nullable types

// Flow Analysis: Promotion & Definite Assignment

void main() {
  print(someValue(25));
  print(someValue(25));
}

int someValue(int? value) {
  if (value == null) {
    return 0;
  }
  return value;
}

/*
int numeValue(int? value) {
  value ??= 0;
  return value;
}
*/