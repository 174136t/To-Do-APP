import 'package:flu_to_do/db/db_helper.dart';
import 'package:flu_to_do/models/task.dart';
import 'package:get/get.dart';

class TaskController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    print('TaskController onReady');
  }

  var taskList = <Task>[].obs;

  Future<int> addTask(Task? task) async {
    print('bbbbbbbb');
    return await DBHelper.insert(task);
  }

  // get all the data from the table
  void getTasks() async {
    List<Map<String, dynamic>> tasks = await DBHelper.query();
    taskList.assignAll(tasks.map((data) => new Task.fromJson(data)).toList());
    print(taskList);
  }

  void delete(Task task) {
     DBHelper.delete(task);
     getTasks();
  
  }

  Future<void> markTaskCompleted(int id) async {
    await DBHelper.update(id);
    getTasks();
  }
}
