//integer convert to binary
decimalToBinary(number) {
  return number.toRadixString(2);
}

getString(text) {
  text = text.replaceAll(new RegExp(r'[^0-9]'), '');
  List<String> list = text.split('');

  return list;
}
