void main()
{

  print('Hello Wordl'); // :)

  // Final se asigna en tiempo de ejecucion
  late String name;
  late final String completeName;
  const List letters = ['c', 'h', 'u', 'y'];
  name = '';
  letters.forEach((letter) => name = '$name$letter');
  completeName = '$name Perez';
  print('hi ${completeName.toUpperCase()}');

  // Const se asigna en tiempo de compilacion
  const String name2 = 'pepe';
  print('hi $name2');
}
