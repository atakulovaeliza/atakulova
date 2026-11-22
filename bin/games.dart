
void main() {
  // 1. Данные игрового персонажа
  String characterName = "Алекс";
  int level = 10;
  int currentHp = 85;
  int maxHp = 100;
  bool isAlive = true;

  // 2. Список экипировки
  List<String> equipment = [
    "Меч",
    "Щит",
    "Броня",
    "Зелье"
  ];

  // 3. Объединение данных в Map
  Map<String, dynamic> character = {
    "Имя": characterName,
    "Уровень": level,
    "Текущее здоровье": currentHp,
    "Максимальное здоровье": maxHp,
    "Жив": isAlive,
    "Экипировка": equipment
  };

  // 4. Вывод информации о персонаже
  print("\n---------- ИГРОВОЙ ПЕРСОНАЖ ----------");
  print("Имя: ${character["Имя"]}");
  print("Уровень: ${character["Уровень"]}");
  print("Здоровье: ${character["Текущее здоровье"]}/${character["Максимальное здоровье"]}");
  print("Состояние: ${character["Жив"] ? "Жив" : "Мертв"}");
  print("Экипировка: ${equipment.join(", ")}");
  print("--------------------------------------");
}
