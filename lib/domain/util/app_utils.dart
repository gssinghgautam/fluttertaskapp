import 'dart:math';

String get profileImage{
  final randomNumber = Random().nextInt(100);
  return 'https://randomuser.me/api/portraits/men/$randomNumber.jpg';
}