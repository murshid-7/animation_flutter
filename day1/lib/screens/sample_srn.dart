import 'package:flutter/material.dart';

class SampleScreen extends StatefulWidget {
  const SampleScreen({super.key});

  @override
  State<SampleScreen> createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  double _margin = 5;
  double _width = 90;
  Color _color = Colors.red;
  double _opacity = 1;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AnimatedContainer(
        margin: EdgeInsets.all(_margin),
        width: _width,
        height: 400,
        color: _color,
        duration: const Duration(seconds: 3),
        child: Column(
          children: [
            IconButton(
                icon: const Icon(Icons.play_arrow),
                iconSize: 40,
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    _margin = 50;
                    _width = 300;
                    _color = Colors.green;
                  });
                }),
            AnimatedOpacity(
              duration: Duration(seconds: 2),
              opacity: _opacity,
              child: Container(
                height: 150,
                width: 200,
                color: Colors.red,
              ),
            ),
            ElevatedButton.icon(onPressed: () {
              
              setState(() {
                _opacity = 0;
              });
              
            }, label: Text('animate'))
          ],
        ),
      ),
    );
  }
}
