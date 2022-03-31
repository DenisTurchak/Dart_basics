import 'dart:math';

import '../lib/binary.dart';

void main() {
  print('#1');
  DelimetersCalculator(30, 12).nodAndNok(); //1
  print('#2');
  decimalToBinary(32); //2
  binaryTodecimal(100000); //2.1
  print('#3');
  print('String: ${getString('fnjdsa fdjs a 32e32 432 4234 ')}'); //3
  print('#4');
  mapData(); //4
  print('#5');
  getNumber(); //5
  print('#6');
  Point(10, 20, 12).distanceTo(12); //6
  Point.randomPoint(); //6
  print('#7');
  num number1 = 2; //7
  number1.toDegree(12); //7
  print('#8');
  AdminUser().getMailSystem('test@mail.ru'); //8
  var userManager = UserManager() //8
    ..addUser('test@user1.com')
    ..showAllUsers()
    ..deleteUser(1);
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

mixin UserInfo on User {
  getMailSystem(String email) {
    List<String> domen = email.split('@');
    print(domen[1]);
  }
}

//6
class Point {
  final double x;
  final double y;
  final double z;

  Point(this.x, this.y, this.z);

  void showPoints() {
    print('$x, $y, $z');
  }

  distanceTo(anotherPoint) {
    print('Расстояние между точками: ${Random().nextInt(50)} м');
  }

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  factory Point.randomPoint() {
    double x = Random().nextInt(50).toDouble();
    double y = Random().nextInt(50).toDouble();
    double z = Random().nextInt(50).toDouble();

    return Point(x, y, z);
  }
}

//8
class User {
  String? email;
}

class AdminUser extends User with UserInfo {}

class GeneralUser extends User {}

class UserManager<T extends User> {
  List<String> users = [
    'user1@mail.ru',
    'user2@mail.ru',
    'user3@mail.ru',
    'user4@mail.ru',
    'admin@mail.ru',
  ];

  void addUser(_email) {
    users.add(_email);
    print(users);
  }

  void deleteUser(idUser) {
    users.removeAt(idUser);
    print(users);
  }

  void showAllUsers() {
    for (var i = 0; i < users.length; i++) {
      if (users[i] == 'admin@mail.ru') {
        List<String> result = users[i].split('@');
        users[i] = result[1];
      }
    }
    print(users);
  }
}
