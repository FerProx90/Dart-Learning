void main() {
  const Map<String, dynamic> rawJson = {
    "name": "Jose",
    "lastName": "Gonzalez",
    "age": 20,
    "position": "Manager auto"
  };

  final Worker worker1 = Worker(name: "Manuel", age: 20, position: "Manager marketong");
  final Worker worker2 = Worker.fromJson(rawJson);

  print(worker1);
  print(worker1.age);
  print('worker2: ${worker2.position}');
}

class Worker {
  String? name;
  String? lastName;
  String? position;
  int? age;

  // Opcion 1 de constructor
  // Worker(String pName, String pLastName, int pAge, String pPosition) :
  //   name = pName,
  //   lastName = pLastName,
  //   age = pAge,
  //   position = pPosition;

  // Opcion 2 de constructor
  Worker({required this.name, this.lastName, required this.age, required this.position});

// Name constructor
// Sirve para crear un objeto a partir de un json y validar la existencia de los campos, asi como evitar repetir
// el destructurado del objeto varias veces evitando errores de escritura.
  Worker.fromJson(rawJson):
    name = rawJson['name'] ?? 'No name',
    lastName = rawJson['lastName'] ?? 'no lastName',
    age = rawJson['age'] ?? 0,
    position = rawJson['position'] ?? 'no position';

  @override
  String toString() {
    return 'Jai';
  }
}