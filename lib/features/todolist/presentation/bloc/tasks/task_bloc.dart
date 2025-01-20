import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:bloc_todo_list/features/todolist/domain/model/tasks.dart';

part 'task_state.dart';
part 'task_event.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskInitialState()) {
    on<AddTaskEvent>((event, emit) {
      final newState = List<Task>.from(state.tasks)..add(event.newTask);
      emit(UserSetTask(newState));
    });
    on<DeleteTaskEvent>((event, emit) {
      final newState =
          state.tasks.where((task) => task.id != event.id).toList();

      emit(UserSetTask(newState));
    });
  }
}
