import 'package:bloc_todo_list/features/todolist/domain/model/tasks.dart';
import 'package:bloc_todo_list/features/todolist/presentation/bloc/tasks/task_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

import 'package:bloc_todo_list/features/todolist/domain/model/task_state.dart'
    as state;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final taskBloc = BlocProvider.of<TaskBloc>(context);
    return Scaffold(
        body: Column(
      children: [
        Text('Tareas'),
        ListView.builder(
          itemCount: taskBloc.state.tasks.length,
          itemBuilder: (context, index) {
            final task = taskBloc.state.tasks[index];
            Color taskColor = Colors.yellow;

            if (task.state.name == state.TaskState.completed.name) {
              taskColor = Colors.greenAccent;
            }

            return ListTile(
              title: Text(task.title),
              subtitle: Text(
                task.description,
                overflow: TextOverflow.ellipsis,
              ),
              leading: Container(
                width: 24,
                height: 24,
                color: taskColor,
              ),
              trailing: Text(task.date.toString()),
            );
          },
        ),
        FilledButton(
          onPressed: () {
            final task = Task(
              id: Uuid().v4(),
              title: 'Dolor ullamco amet incididunt sint culpa ex.',
              date: DateTime.now(),
              description:
                  'Incididunt non consequat culpa veniam Lorem dolore est ad est id ut.',
            );

            taskBloc.add(AddTaskEvent(task));
          },
          child: Text('Agregar tarea'),
        ),
      ],
    ));
  }
}
