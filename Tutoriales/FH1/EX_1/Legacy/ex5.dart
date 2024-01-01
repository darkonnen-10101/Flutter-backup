void main() {
  hello('Adel');
  hello('Adel', 'Hello');

  bye(modifier: false, status: 'Alive');
}

void hello(String name, [String message = 'Hi']) {
  print('${message} ${name}');
}

void bye({bool modifier = true, required String status}) {
  print('${modifier} ${status}');
}
