import 'package:bloc_todo_list/features/todolist/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    )
  ],
);
