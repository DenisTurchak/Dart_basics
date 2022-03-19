//2
decimalToBinary(number) {
  return number.toRadixString(2);
}

//3
getString(text) {
  if (text is String) {
    text = text.replaceAll(RegExp(r'[^0-9]'), '');
    List<String> list = text.split('');
    return list;
  }
  throw ArgumentError('Text is not String');
}

//1
delimetersCalculator(int number1, int number2) {
  int nod = number1.gcd(number2);

  print("НОД $number1 и $number2 = $nod");

  double noc = (number1 * number2) / nod;
  print("НОК $noc");
}

final Map<String, int> mapList = {};

//4
mapData() {
  List words = [
    'один',
    'два',
    'три',
    'четыре',
    'четыре',
    'пять',
    'пять',
    'пять',
  ];

  for (int i = 0; i < words.length; i++) {
    if (mapList.containsKey(words.elementAt(i))) {
      mapList.update(words.elementAt(i), (value) => value + 1);
    } else {
      mapList.addAll({words.elementAt(i): 1});
    }
  }
  print('Map collection = $mapList');
}
