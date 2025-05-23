void main() {
  print('no future');
  httpGet()
      .then((value) {
        print(value);
      })
      .catchError((err) {
        print(err);
      });
  print('no future yet');
}

Future<String> httpGet() {
  return Future.delayed(const Duration(seconds: 2), () {
    return 'holi, esto es un future';
  });
}
