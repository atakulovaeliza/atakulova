
void main() {
  // 1. Переменные смартфона
  String name = "iPhone 15";
  int year = 2023;
  double price = 75000.0;
  bool hasNfc = true;

  // 2. Список доступных цветов
  List<String> colors = ["Черный", "Белый", "Синий"];

  print("Количество цветов: ${colors.length}");

  // 3. Объединение данных в Map
  Map<String, dynamic> device = {
    "Название": name,
    "Год выпуска": year,
    "Цена": price,
    "NFC": hasNfc,
    "Цвета": colors
  };

  // 4. Вывод карточки смартфона
  print("\n========== ХАРАКТЕРИСТИКИ ==========");
  print("Название: ${device["Название"]}");
  print("Год выпуска: ${device["Год выпуска"]}");
  print("Цена: ${device["Цена"]} сом");
  print("Наличие NFC: ${device["NFC"] ? "Есть" : "Нет"}");
  print("Доступные цвета: ${colors.join(", ")}");
  print("====================================");
}
