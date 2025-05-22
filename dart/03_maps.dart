void main() {
  final Map<String, int> currency = {
    'USD': 19,
    'EUR': 22,
    'MXN': 1,
    'COP': 42,
    'CLP': 5,
    'PEN': 2,
    'BRL': 73,
    'ARS': 0002,
    'UYU': 93,
    'PYG': 10,
  };

  print(currency);
  print('Currency de EUR es: ${currency['EUR']}');

  final Map<String, dynamic> coverage = {
    'packName': 'full Covergae',
    'price': 200000,
    'canRenew': false,
    'coverages': <String>['grand', 'theft', 'auto', 'VI'],
    'executives': {
      'main': 'auto@exe',
      'assistant': 'auto@exe',
      'jr': 'auto@jr'
    }
  };

  print('datos de coverages: ${ coverage['packName'] }, ${ coverage['executives']['assistant'] }');
}