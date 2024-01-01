import 'dart:ffi';

void main() {
  final Character hero = Hero('Adel', 'Coding');
  final Character villain = Villain('Darko', 'Killing');
  print(hero);
  print(villain);
}

abstract class Character {
  String? power;
  String name;

  Character(this.name, this.power);

  @override
  String toString() => '${name} - ${power}';
}

class Hero extends Character {
  // Hero(super.name);
  Hero(String name, String power) : super(name, power);
}

class Villain extends Character {
  int maldad = 50;
  Villain(String name, String power) : super(name, power);
}
