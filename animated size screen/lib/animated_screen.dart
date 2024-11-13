import 'package:animation_task/container_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnimatedScreen extends StatelessWidget {
  const AnimatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<ContainerProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ContainerProvider>(
              builder: (context, value, child) => AnimatedContainer(
                duration: Duration(seconds: 2),
                curve: Curves.easeInOut,
                width: pro.isExpanded ? 300 : 150,
                height: pro.isExpanded ? 300 : 150,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    pro.isExpanded ? 'Big' : 'Small',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  pro.toggleSize();
                },
                child: Text(
                  'click',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
