part of 'task_bloc.dart';

@immutable
abstract class TaskEvent {}

class AddTaskEvent extends TaskEvent {
  final Task newTask;

  AddTaskEvent(this.newTask);
}


class DeleteTaskEvent extends TaskEvent {
  final String id;

  DeleteTaskEvent(this.id);
}