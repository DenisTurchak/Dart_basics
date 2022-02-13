//integer convert to binary
decimalToBinary(number) {
  return number.toRadixString(2);
}

getString(text) {
  if (text is String) {
    text = text.replaceAll(RegExp(r'[^0-9]'), '');
    List<String> list = text.split('');
    return list;
  }
  throw ArgumentError('Text is not String');
}

delimetersCalculator(int number1, int number2) {
  print("НОД $number1 и $number2 = ${number1.gcd(number2)}");
}

mapData() {
 const List words = [
    'Слово один',
    'Слово два',
    'Слово три',
    'Слово четыре',
    'Слово четыре',
    'Слово пять',
    'Слово пять',
    'Слово пять',
  ];

  final map = <String, int>{};

  //перебрать массив и посчитать сколько раз слово появляется в массиве
  
}
