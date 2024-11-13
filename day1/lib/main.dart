import 'package:day1/controller/animate_text_provider.dart';
import 'package:day1/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AnimatedTextProvider(),
      child: MaterialApp(
        title: 'My App',
        debugShowCheckedModeBanner: false,
        routes: {
        },
        home: HomePage(),
      ),
    );
  }
}
