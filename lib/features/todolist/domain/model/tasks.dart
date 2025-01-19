import 'package:uuid/uuid.dart';

import 'package:bloc_todo_list/features/todolist/domain/model/task_state.dart';

class Task {
  final Uuid id;
  final String title;
  final DateTime date;
  final String description;
  final TaskState state;

  Task({
    required this.id,
    required this.title,
    required this.date,
    required this.description,
    required this.state,
  });

  Task copyWith({
    Uuid? id,
    String? title,
    DateTime? date,
    String? description,
    TaskState? state,
  }) =>
      Task(
        id: id ?? this.id,
        title: title ?? this.title,
        date: date ?? this.date,
        description: description ?? this.description,
        state: state ?? this.state,
      );
}
