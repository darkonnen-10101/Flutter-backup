void main() async {
  print('Antes de la petición');

  final data = await httpGet('https://www.google.com').then((data) {
    print(data);
  });

  final nombre = await getNombre('10');
  print(nombre);
  // getNombre('10').then(print);

  print('Después de la petición');
}

Future<String> getNombre(String id) async {
  return '$id - Adel';
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Hola Mundo - 3 segundos';
  });
}
