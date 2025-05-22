void main() {
  print(etoEunLambda());
  print(sum(2));
  print(sum(3));
  print(greetPokemon(name: "pikachu", message: 'pika pika'));
  print(greetPokemon(name: "Bulbasaur"));
}

// lambda function o function flecha () =>
String etoEunLambda() => 'mira soy un lambda';

// Parametro opcional nulo
int sum(int a, [int? b]) { 
  // b = b ?? 0;
  b ??= 0;
  return a + b;
}

// Parametro opcional con valor por defecto
int suma(int a, [int b = 0]) { 
  return a + b;
}

// Parametros no posicionales
String greetPokemon({required String name, String message = 'hi'}){
  return '$message, $name';
}