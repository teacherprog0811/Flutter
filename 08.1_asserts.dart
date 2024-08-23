void main() {
  final mySquare = Square(side: 10);

//   mySquare.side = 5;

// LLamando al metodo GET area para realizar el calculo
  print('área: ${mySquare.area}');

// LLamando a la funcion CalcularArea() para realizar el calculo
//  print('área: ${mySquare.calculateArea()}');
}

class Square {
  //_side propiedades privadas que solo son visibles dentro de la clase

  double _side; // side * side

  //Haciendo uso de ASSERT,  ASSERT(CONDICION, MENSAJE PERSONALIZADO)

  Square({required double side})
      : assert(
            side >= 0, 'EL LADO DEBE SER MAYOR O IGUAL A CERO DESDE EL ASSERT'),
        _side = side;

//Creando METODO GET
  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('ESTABLECIENDO UN NUEVO VALOR AL LADO $value');
    if (value < 0) throw 'EL LADO DEBE SER MAYOR O IGUAL A CERO DESDE SETTER';

    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
