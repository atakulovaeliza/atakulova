
import 'dart:io';

void main() {
  Map<String, int> products = {
    'bread': 30,
    'milk': 70,
    'tea': 120,
    'butter': 150,
  };

  print('Введите название товара:');
  String name = stdin.readLineSync()!.trim().toLowerCase();

  if (products.containsKey(name)) {
    print('Цена товара: ${products[name]} сом');
  } else {
    print('Такого товара нет');
  }
}
