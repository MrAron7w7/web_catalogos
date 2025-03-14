import 'package:flutter/material.dart';
import 'package:web_catalogos/presentation/views/home_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Catalogos',
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
