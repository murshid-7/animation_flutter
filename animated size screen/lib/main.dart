import 'package:animation_task/animated_screen.dart';
import 'package:animation_task/container_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() {
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>ContainerProvider(),
      child: MaterialApp(
        home: AnimatedScreen(),
      ),
    );
  }
}