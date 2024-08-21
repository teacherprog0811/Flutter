//Estructuras de colecciones
void main() {
  //LIST []
  //SET {} NO PERMITE VALORES DUPLICADOS
  //ITERABLE ()

  // List
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List original $numbers');
  // Imprime el tamaño de la list
  print('Length ${numbers.length}');
  // Imprime el valor de la lista basado en su posicion
  print('Index 0: ${numbers[0]}');
  // Imprime el primer item de la lista
  print('First: ${numbers.first}');
  print('Reversed: ${numbers.reversed}');
  //Inserta un item en la lista definiendo su posicion
  numbers.insert(0, 20);
  print('List Modified: $numbers');
  // Elimina un item por su valor asignado en la lista
  numbers.remove(20);
  print('List Deleted Items: $numbers');
  // Devuelve la lista de manera inversa
  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  // Convierte el SET en una LIST
  print('List: ${reversedNumbers.toList()}');
  // Convierte el LIST en un SET
  print('Set: ${reversedNumbers.toSet()}');

  Set<int> variable1 = {1, 2, 3, 4, 5};
  variable1.forEach((element) {
    print('Set For: $element');
  });

  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5; // true
  });

  print('>5 iterable: $numbersGreaterThan5');
  print('>5 Set: ${numbersGreaterThan5.toSet()}');
}
