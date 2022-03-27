//1 Вычисления НОД и НОК целых чисел
class DelimetersCalculator {
  final int number1;
  final int number2;

  DelimetersCalculator(this.number1, this.number2);

  nodAndNok() {
    int nod = number1.gcd(number2);

    print("НОД $number1 и $number2 = $nod");

    double noc = (number1 * number2) / nod;
    print("НОК $noc");
  }
}

//2 преобразования целых чисел из десятичной системы в двоичную и обратно
decimalToBinary(int number) {
  print('$number в двоичной системе: ${number.toRadixString(2)}');
}

//2.1 преобразования целых чисел из вдоичной системы в десятичную
binaryTodecimal(int numberBinary) {
  print(
      '$numberBinary в десятичной системе: ${int.tryParse(numberBinary.toString(), radix: 2)}');
}

//3 метод, который принимает строку слов, разделённых пробелами.
//Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.
getString(text) {
  if (text is String) {
    text = text.replaceAll(RegExp(r'[^0-9]'), '');
    List<String> list = text.split('');
    return list;
  }
  throw ArgumentError('Text is not String');
}

//4 метод, возвращающий Map.
//Данный Map должен соотносить слово и количество его вхождений в
//данную коллекцию.

final Map<String, int> mapList = {};
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

//5 метод, возвращающий цифры без повторений, которые встречаются в данной строке.
List listWords = [
  'zero',
  'one',
  'two',
  'three',
  'three'
      'cat',
  'dog',
  'four',
  'five',
  'parrot',
];

var resultNumbers = <int>{};
getNumber() {
  for (var item in listWords) {
    if (item == 'zero') {
      item = 0;
      resultNumbers.add(item);
    }
    if (item == 'one') {
      item = 1.toInt();
      resultNumbers.add(item);
    }
    if (item == 'two') {
      item = 2.toInt();
      resultNumbers.add(item);
    }
    if (item == 'three') {
      item = 3.toInt();
      resultNumbers.add(item);
    }
    if (item == 'four') {
      item = 4.toInt();
      resultNumbers.add(item);
    }
    if (item == 'five') {
      item = 5.toInt();
      resultNumbers.add(item);
    }
    if (item == 'six') {
      item = 6.toInt();
      resultNumbers.add(item);
    }
    if (item == 'seven') {
      item = 7.toInt();
      resultNumbers.add(item);
    }
    if (item == 'eight') {
      item = 8.toInt();
      resultNumbers.add(item);
    }
    if (item == 'nine') {
      item = 9.toInt();
      resultNumbers.add(item);
    }
  }
  print(resultNumbers);
}
