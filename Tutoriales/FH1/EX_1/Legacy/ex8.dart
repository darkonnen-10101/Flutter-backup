void main() {
  final Animal perro = Perro();
  final Animal gato = Gato();

  perro.emitirSonido();
  sonidoAnimal(gato);
}

void sonidoAnimal(Animal animal) {
  animal.emitirSonido();
}

abstract class Animal {
  int? patas;

  Animal();

  void emitirSonido() {}
}

class Perro implements Animal {
  @override
  int? patas;

  @override
  void emitirSonido() {
    print('Guau');
  }
}

class Gato implements Animal {
  @override
  int? patas;
  int? cola;

  @override
  void emitirSonido() {
    print('Miau');
  }
}
