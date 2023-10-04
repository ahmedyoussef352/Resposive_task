import 'package:flutter/material.dart';
import 'package:resposive_task/view/screens/fruits/exotic_fruits.dart';
import 'package:resposive_task/view/screens/fruits/fruits_main.dart';
import 'package:resposive_task/view/screens/hotel/hotel_home.dart';
import 'package:resposive_task/view/screens/hotel/hotel_sign.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resposive_task1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Builder(builder: (context) {
        if (MediaQuery.of(context).size.width.toInt() > 560) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1.8,
              ),
              child: const ExoticFruits());
        }
        return const ExoticFruits();
      }),
    );
  }
}
