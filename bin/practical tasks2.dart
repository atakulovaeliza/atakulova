
import 'dart:io';

void main() {
  // Задание 1. Фейсконтроль
  print('ЗАДАНИЕ 1');

  int age1 = 18;

  if (age1 >= 18) {
    print('Проходите');
  } else {
    print('Вход запрещен');
  }

  // Задание 2. Интерактивный фейсконтроль
  print('\n ЗАДАНИЕ 2');

  print('Сколько вам лет?');
  int age2 = int.parse(stdin.readLineSync()!);

  if (age2 >= 18) {
    print('Проходите');
  } else {
    print('Вход запрещен');
  }

  // Задание 3. Система авторизации
  print('\n ЗАДАНИЕ 3');

  print('Введите логин:');
  String login = stdin.readLineSync()!;

  print('Введите пароль:');
  String password = stdin.readLineSync()!;

  if (login == 'admin' && password == '12345') {
    print('Авторизация успешна!');
  } else {
    print('Неверный логин или пароль');
  }

  // Задание 4. Банкомат
  print('\n ЗАДАНИЕ 4');

  int balance = 5000;

  print('1 - Баланс');
  print('2 - Снятие');
  print('3 - Пополнение');
  print('Выберите действие:');

  String choice = stdin.readLineSync()!;

  switch (choice) {
    case '1':
      print('Ваш баланс: $balance сом');
      break;

    case '2':
      print('Введите сумму для снятия:');
      int amount = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

      if (amount > 0 && amount <= balance) {
        balance -= amount;
        print('Вы сняли $amount сом');
        print('Остаток: $balance сом');
      } else {
        print('Недостаточно средств или неверная сумма');
      }
      break;

    case '3':
      print('Введите сумму для пополнения:');
      int amount = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

      if (amount > 0) {
        balance += amount;
        print('Баланс пополнен');
        print('Новый баланс: $balance сом');
      } else {
        print('Неверная сумма');
      }
      break;

    default:
      print('Такого действия нет');
  }

  // Техническое задание. Текстовый квест
  print('\n ТЕКСТОВЫЙ КВЕСТ');
  print('Добро пожаловать в игру!');
  print('Ты оказался в загадочном лесу.');

  bool hasKey = false;
  int health = 100;

  print('\n Куда пойдешь?');
  print('1 - Налево');
  print('2 - Направо');

  String direction = stdin.readLineSync() ?? '';

  if (direction == '1') {
    print('\n Ты встретил сундук.');
    print('1 - Открыть сундук');
    print('2 - Пройти мимо');

    String chest = stdin.readLineSync() ?? '';

    if (chest == '1') {
      hasKey = true;
      print('Ты нашел ключ!');

      print('\n Впереди появилась закрытая дверь.');
      print('1 - Открыть дверь');
      print('2 - Вернуться назад');

      String door = stdin.readLineSync() ?? '';

      if (door == '1') {
        if (hasKey && health >= 30) {
          print('Дверь открылась!');
          print('Поздравляем! Ты прошел квест!');
        } else {
          print('Недостаточно условий для открытия двери.');
        }
      } else if (door == '2') {
        print('Ты вернулся назад.');
      } else {
        print('Неверная команда.');
      }

    } else if (chest == '2') {
      print('Ты прошел мимо сундука.');
    } else {
      print('Неверная команда.');
    }

  } else if (direction == '2') {
    print('\n Ты встретил врага!');
    print('1 - Атаковать');
    print('2 - Убежать');

    String enemy = stdin.readLineSync() ?? '';

    if (enemy == '1') {
      health -= 40;
      print('Ты победил врага, но потерял здоровье.');
      print('Твое здоровье: $health');

      if (health >= 30) {
        print('Ты можешь продолжить путешествие.');
      } else {
        print('У тебя недостаточно здоровья.');
      }

    } else if (enemy == '2') {
      print('Ты убежал от врага.');
    } else {
      print('Неверная команда.');
    }

  } else {
    print('Неверный выбор. Игра окончена.');
  }
}
