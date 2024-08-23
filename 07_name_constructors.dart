void main() {
// Forma tradicional para llamar una clase y su constructor
  final ironman = Hero(name: 'Tony Stark', power: 'Money', isAlive: true);
  print(ironman);

// Si obtenemos los datos desde una API con un tipado de datos JSON (MAP)
  final Map<String, dynamic> rawJson = {
    'name': 'Logan',
    'power': 'Garras',
    'isAlive': true
  };

  final xmen = Hero.fromJson(rawJson);

  print(xmen);
}

class Hero {
  String name;
  String power;
  bool isAlive;
  //Constrouctor
  Hero({required this.name, required this.power, required this.isAlive});

  // Constructor Personalizado
  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found', // ?? Indica si el valor es nulo
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'YES!' : 'Nope'}'; // Uso de operadores ternarios Variable ? Valor si es verdadero : Valor si es falso
  }
}
