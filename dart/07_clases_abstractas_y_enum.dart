void main() {
  final Insurance hummer = AutoInsurance(price: 2000);
  hummer.pay(2000);
}

enum PackageType { standardLiability, limitedCoverage, fullCoverage }

abstract class Insurance {
  double price;
  PackageType packageType;

  Insurance({required this.price, required this.packageType});

  void pay(double amount);
}

// si usas implements, puedes usar solo métodos en particular y con implements debes usar todo de la
// clase abstracta en general
class AutoInsurance extends Insurance {
  AutoInsurance({required double price})
    : super(price: price, packageType: PackageType.standardLiability);

  @override
  void pay(double amount) {
    if (amount == price) {
      print('prima pagada, estas asegurado');
    }
  }
}
