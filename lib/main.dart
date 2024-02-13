import 'package:flutter/material.dart';
import 'firstscreen.dart';
import 'package:provider/provider.dart';
import 'model.dart';



void main() {
  runApp( ChangeNotifierProvider(
      create: (context) => Model(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roll',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Decoratedboxcustome(),
    );
  }
}

