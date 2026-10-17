// задание 2: дни недели 

void main() {
  List<String> days = [
    'Понедельник',
    'Вторник',
    'Среда',
    'Четверг',
    'Пятница',
    'Суббота',
    'Воскресенье'
  ];

  for (String day in days) {
    switch (day) {
      case 'Понедельник':
      case 'Вторник':
      case 'Среда':
      case 'Четверг':
      case 'Пятница':
        print('$day - рабочий день');
        break;


      case 'Суббота':
      case 'Воскресенье':
        print('$day - выходной');
        break;

      default:
        print('Такого дня недели нет');
    }
  }
}