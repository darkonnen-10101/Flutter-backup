import 'dart:math';

void main() {
  final cuadrado = new Cuadrado(-10);
  print(cuadrado);
  print(cuadrado.area);

  cuadrado.area = 100;

  print(cuadrado.area);
}

class Cuadrado {
  double _lado = 0;

  Cuadrado(double side)
      : assert(side >= 0, 'lado must be over 0'),
        this._lado = side;

  double get area {
    return this._lado * this._lado;
  }

  void set area(double valor) {
    this._lado = sqrt(valor);
  }
}
