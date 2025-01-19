part of 'task_bloc.dart';

@immutable
abstract class TaskState {
  final List<Task> tasks;

  const TaskState({this.tasks = const []});
}

class TaskInitialState extends TaskState {
  TaskInitialState() : super(tasks: []);
}

class UserSetTask extends TaskState {
  const UserSetTask(List<Task> tasks) : super(tasks: tasks);
}
