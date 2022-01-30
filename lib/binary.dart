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
