import 'dart:io';
void sortByTotalCost(List<Map<String, dynamic>> products) {
  products.sort((a, b) => (b['price'] * b['quantity']).compareTo(a['price'] * a['quantity']));
  print('Sorted products:');
  products.forEach((product) => print('${product['name']} - ${product['price']} x ${product['quantity']} = ${product['price'] * product['quantity']}'));
}

void main() {
  final p = [
    {'name': 'Apple', 'price': 2.0, 'quantity': 5},
    {'name': 'Orange', 'price': 1.5, 'quantity': 7},
    {'name': 'Banana', 'price': 0.5, 'quantity': 10},
    {'name': 'Grapes', 'price': 3.0, 'quantity': 3},
  ];
  sortByTotalCost(p);
}
