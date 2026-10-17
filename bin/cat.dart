//задание 3: анкета знакомств

import 'dart:io';

void main() {
  print('АНКЕТА ЗНАКОМСТВ');
  print('');

  print('Привет! Давай познакомимся.');
  print('');

  print('Как тебя зовут?');
  String name = stdin.readLineSync()!;

  print('Сколько тебе лет?');
  String age = stdin.readLineSync()!;

  print('Из какого ты города?');
  String city = stdin.readLineSync()!;

  print('Какой твой любимый язык программирования?');
  String language = stdin.readLineSync()!;

  print('Какое у тебя хобби?');
  String hobby = stdin.readLineSync()!;

  print('');
  print('РЕЗУЛЬТАТ АНКЕТЫ');
  print('');

  print('Имя: $name');
  print('Возраст: $age');
  print('Город: $city');
  print('Любимый язык программирования: $language');
  print('Хобби: $hobby');

  print('');
  print('Приятно познакомиться, $name!');
  print('$name из города $city, уважает $language — отличный выбор!');
  print('Твоё хобби — $hobby. Это здорово!');
  print('Спасибо за заполнение анкеты!');
}