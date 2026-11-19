
import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print('\n===== TO-DO LIST =====');
    print('1. View tasks');
    print('2. Add task');
    print('3. Delete task');
    print('4. Exit');

    print('Choose an option:');
    String choice = stdin.readLineSync()!;

    if (choice == '1') {
      if (tasks.isEmpty) {
        print('Task list is empty.');
      } else {
        print('Your tasks:');
        for (int i = 0; i < tasks.length; i++) {
          print('${i + 1}. ${tasks[i]}');
        }
      }
    } 
    
    else if (choice == '2') {
      print('Enter a new task:');
      String task = stdin.readLineSync()!;

      tasks.add(task);
      print('Task added successfully!');
    } 
    
    else if (choice == '3') {
      if (tasks.isEmpty) {
        print('There are no tasks to delete.');
      } else {
        print('Enter task number to delete:');
        int? number = int.tryParse(stdin.readLineSync()!);

        if (number != null && number >= 1 && number <= tasks.length) {
          tasks.removeAt(number - 1);
          print('Task deleted successfully!');
        } else {
          print('Invalid task number!');
        }
      }
    } 
    
    else if (choice == '4') {
      print('Goodbye!');
      break;
    } 
    
    else {
      print('Invalid option. Try again.');
    }
  }
}
