void main() {
  final List numbers;

  numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

  numbers.add(-1);

  List<dynamic> otherList = [null, true, 1, 'Hola'];

  final gen = List.generate(100, (int index) => index);

  print(otherList);

  print(gen);

  print(numbers[0]);
}
