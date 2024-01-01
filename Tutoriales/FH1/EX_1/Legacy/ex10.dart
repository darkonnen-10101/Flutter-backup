abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

abstract class Volador {
  void volar() => print('Estoy volando');
}

abstract class Caminante {
  void caminar() => print('Estoy caminando');
}

abstract class Nadador {
  void nadar() => print('Estoy nadando');
}

class Delfin extends Animal with Nadador {}

class Murcielago extends Animal with Caminante, Volador {}

class Gato extends Animal with Caminante {}

class Paloma extends Animal with Caminante, Volador {}

class Pato extends Animal with Caminante, Volador, Nadador {}

void main() {
  final Delfin flipper = new Delfin();
  flipper.nadar();

  final Murcielago murcielago = new Murcielago();
  murcielago.caminar();
  murcielago.volar();

  final Gato gato = new Gato();
  gato.caminar();

  final Paloma paloma = new Paloma();
  paloma.caminar();
  paloma.volar();

  final Pato pato = new Pato();
  pato.caminar();
  pato.volar();
  pato.nadar();
}
