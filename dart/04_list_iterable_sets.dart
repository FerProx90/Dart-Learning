void main() {
  // LISTAS
  final List<int> numbers = [1,2,3,4,5,6,7,8,9,9,10];
  print('Lista: $numbers');
  print('Lenght: ${numbers.length}');
  print('Index: ${numbers[0]}');
  print('First: ${numbers.first}'); // Se debe validar que la lista no este vacia
  print('Reversed: ${numbers.reversed}'); // Se obtiene un iterable

  final Iterable<int> reveresNumbers = numbers.reversed;
  print('Iterable: $reveresNumbers');
  print('List: ${reveresNumbers.toList()}');
  print('Set: ${reveresNumbers.toSet()}'); // Evita duplicados

  final numbersGreaterThan5 = numbers.where((int num) => num > 5);
  print('>5 $numbersGreaterThan5');
  print('>5 set: ${numbersGreaterThan5.toSet()}');
}