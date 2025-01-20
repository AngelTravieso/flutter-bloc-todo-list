import 'package:bloc_todo_list/features/todolist/domain/model/task_status.dart';

class Task {
  final String id;
  final String title;
  final DateTime date;
  final String description;
  final TaskStatus status;

  Task({
    required this.id,
    required this.title,
    required this.date,
    required this.description,
    this.status = TaskStatus.pending,
  });

  Task copyWith({
    String? id,
    String? title,
    DateTime? date,
    String? description,
    TaskStatus? status,
  }) =>
      Task(
        id: id ?? this.id,
        title: title ?? this.title,
        date: date ?? this.date,
        description: description ?? this.description,
        status: status ?? this.status,
      );
}
