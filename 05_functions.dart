void main() {
  print(greetEveryone());

  print('Suma Funcion sin tipado: ${addTwoNumbers(10, '20')}');

  print('Suma Funcion con tipado: ${addTwoNumbersTipado(10, 20)}');

  print(greetPerson(name: 'Fernando', message: 'Hi,'));
}

String greetEveryone() => 'Hello everyone!';

int addTwoNumbers(a, b) {
  return a + b;
}

int addTwoNumbersTipado(int a, int b) => a + b;

// [] Establece el parametro b como opcional.
int addTwoNumbersOptional(int a, [int b = 0]) {
// Establece el valor de cero a la variable b
//   b ??= 0;
  return a + b;
}

// Las {} Establece los valores como opcionales en la funcion para establecer requerido se usa la palabra required
String greetPerson({required String name, String message = 'Hola,'}) {
  return '$message Ivan';
}
