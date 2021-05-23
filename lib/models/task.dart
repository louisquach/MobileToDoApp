// this model used for TaskList to show the behaviour of task items
// because TaskList need to have an array of tasks
class Task {
  final String name;
  bool isDone = false;
  Task({this.name, this.isDone = false});
// because isDone has default value as false, so we don't need to pass that value when construct Task
  void toggleCheckbox() {
    isDone = !isDone;
  }
}