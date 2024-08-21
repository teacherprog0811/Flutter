void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };

  final ironman = Hero.fromJson(rawJson);

  print(ironman);

  final spiderman = Hero(isAlive: false, power: 'Money', name: 'Tony Stark');

  print(spiderman);
}

class Hero {
  String name;
  String power;
  bool isAlive;
  //Constrouctor
  Hero({required this.name, required this.power, required this.isAlive});

  // Constructor Personalizado
  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'YES!' : 'Nope'}';
  }
}
