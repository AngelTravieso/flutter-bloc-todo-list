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

class UpdateTaskEvent extends TaskEvent {
  final String id;
  final String? title;
  final DateTime? date;
  final String? description;
  final TaskStatus? status;

  UpdateTaskEvent(
    this.id, {
    this.title,
    this.date,
    this.description,
    this.status,
  });
}
