import 'package:crudapp_riverpod/feature/dashboard/presentation/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // routerDelegate: _appRouter.delegate(),
      // routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
