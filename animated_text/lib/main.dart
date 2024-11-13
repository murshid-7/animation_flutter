import 'package:animated_text/home_screen.dart';
import 'package:animated_text/provider_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderText(),
      child: MaterialApp(
        home: HomeScreen(),
      ));
  }
}