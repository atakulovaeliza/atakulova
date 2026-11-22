
void main() {
  // Упражнение 1
  const int yourAge = 16;
  const bool isKid = yourAge >= 0 && yourAge <= 16;

  print('УПРАЖНЕНИЕ 1');
  print('Возраст: $yourAge');
  print('Является ребенком: $isKid');


  // Упражнение 2
  const int jantaiAge = 15;
  const int aliAge = 18;

  const bool areKids =
      jantaiAge >= 0 && jantaiAge <= 16 &&
      aliAge >= 0 && aliAge <= 16;

  print('\n УПРАЖНЕНИЕ 2');
  print('Возраст Жантая: $jantaiAge');
  print('Возраст Али: $aliAge');
  print('Оба являются детьми: $areKids');


  // Упражнение 3
  const int manapAge = 14;
  const int dimaAge = 20;

  const bool ifChild =
      (manapAge >= 0 && manapAge <= 16) ||
      (dimaAge >= 0 && dimaAge <= 16);

  print('\n УПРАЖНЕНИЕ 3');
  print('Возраст Манапа: $manapAge');
  print('Возраст Димы: $dimaAge');
  print('Хотя бы один является ребенком: $ifChild');


  // Упражнение 4
  double experience = 1.0;

  print('\n УПРАЖНЕНИЕ 4');

  if (experience >= 0 && experience < 2) {
    print('Junior developer');
  } else if (experience >= 2 && experience < 5) {
    print('Middle developer');
  } else if (experience >= 5) {
    print('Senior developer');
  } else {
    print('Неверный стаж');
  }


  // Упражнение 5
  int score = 75;

  print('\n УПРАЖНЕНИЕ 5');

  String result = score > 50 ? 'Зачет сдан' : 'Зачет не сдан';

  print(result);
}
