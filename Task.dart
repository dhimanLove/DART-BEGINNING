import 'dart:io';

const String tasksFile = 'tasks.txt';

List<String> loadTasks() {
  return File(tasksFile).existsSync()
      ? File(tasksFile).readAsLinesSync()
      : [];
}

void saveTasks(List<String> tasks) {
  File(tasksFile).writeAsStringSync(tasks.join('\n'));
}

void main() {
  List<String> tasks = loadTasks();

  while (true) {
    print('\n Menu:');
    print('1. Add Task');
    print('2. Delete Task');
    print('3. Show Tasks');
    print('4. Exit');

    print("Enter the number");
    String choice = stdin.readLineSync()!;

    if (choice == '1') {
      stdout.write('Enter task: ');
      String task = stdin.readLineSync()!.trim();
      if (tasks.contains(task)) {
        print('Pehle se hai ye task yaar!');
      } else {
        tasks.add(task);
        print('Task added.');
      }
    }
     else if (choice == '2') {
      stdout.write('Enter task to delete: ');
      String task = stdin.readLineSync()!.trim();

      if (tasks.remove(task)) {
        print('Task deleted.');
      } else {
        print('Task not found!');
      }
    } 
    else if (choice == '3') {
      if (tasks.isEmpty) {
        print('No tasks available.');
      } else {
        print('Tasks:');
        for (int i = 0; i < tasks.length; i++) {
          print('${i + 1}. ${tasks[i]}');
        }
      }
    } else if (choice == '4') {
      saveTasks(tasks);
      print('Tasks saved. Exiting...');
      break;
    } else {
      print('Invalid option, try again.');
    }
  }
}
