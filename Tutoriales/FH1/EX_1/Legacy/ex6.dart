void main() {
  final Map<String, String> rawJson = {
    'name': 'Logan',
    'power': 'Regeneration'
  };

  final Hero hero = new Hero(name: rawJson['name']!, power: rawJson['power']!);

  final Hero newHero = new Hero.fromJson(rawJson);

  print(hero._name);
  print(newHero._name);
}

class Hero {
  String? _name;
  String? _power;

  // Hero(String this._name, String this._power) {}

  Hero({String? name, String? power}) {
    this._name = name!;
    this._power = power!;
  }

  Hero.fromJson(Map<String, String> json)
      : this._name = json['name']!,
        this._power = json['power'] ?? 'Doesn\'t have power';

  @override
  String toString() {
    return 'name: ${this._name}, power: ${this._power}';
  }
}
