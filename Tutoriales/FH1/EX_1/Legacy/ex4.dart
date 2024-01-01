void main() {
  final Map<String, dynamic> person = {
    'name': 'Adel',
    'age': 36,
    'single': false,
  };

  person.addAll({
    'status': 'Alive',
  });

  print(person['name']);
  print(person);
}
