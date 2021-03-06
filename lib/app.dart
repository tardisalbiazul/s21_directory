import 'package:flutter/material.dart';
import '../core/core.dart';
import '../directory/directory.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Directorio de Prestadores',
      theme: ThemeData(
        fontFamily: 'Open Sans',
        primaryColor: AppConstants.s21Red,
        colorScheme: ColorScheme.fromSeed(seedColor: AppConstants.s21Red),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppConstants.s21Red,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout();
  }
}
