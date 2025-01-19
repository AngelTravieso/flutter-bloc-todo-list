import 'package:flutter/material.dart';

import 'package:bloc_todo_list/config/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter BLoC ToDo List App',
      routerConfig: router,
    );
  }
}
