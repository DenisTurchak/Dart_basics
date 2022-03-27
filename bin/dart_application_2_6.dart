import 'package:dart_application_2_6/binary.dart';

void main() {
  DelimetersCalculator(30, 12).nodAndNok(); //1
  decimalToBinary(32); //2
  binaryTodecimal(100000); //2.1
  print('String: ${getString('fnjdsa fdjs a 32e32 432 4234 ')}'); //3
  mapData(); //4
  getNumber(); //5
  num number1 = 2;
  number1.toDegree(12); //7
}

//7
extension on num {
  toDegree(degree) {
    var result = this;
    for (var i = 1; i < degree; i++) {
      result = result * this;
    }
    print('this = $this, degree = $degree, result = $result');
  }
}
