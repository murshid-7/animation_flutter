import 'package:animated_text/provider_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ProviderText>(
              builder: (context, pro, child) => AnimatedAlign(
                duration: const Duration(seconds: 2),
                alignment: pro.isRightAligned
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                curve: Curves.easeInOut,
                child: Text(
                  'HY WASSUP',
                  style: TextStyle(
                    color: pro.textColor,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () {
                Provider.of<ProviderText>(context, listen: false).moveText();
              },
              child: const Text(
                'ANIMATE',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
