void main() async {
  print('no future');
  try {
    final value = await httpGet();
    print(value);
  } on Exception catch(e) { // Para cachar errores especificos
    print(e);
  } catch (e) {
    print(e);
  } finally {
    print('fin del trycatchy');
  }
  print('futureeee');
}

Future<String> httpGet() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'holi, esto es un future';
}
