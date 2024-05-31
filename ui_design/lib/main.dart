import 'package:flutter/material.dart'; 
import 'screen/home_screen.dart';
import 'utils/color.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter to Figma',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: blackColor),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
