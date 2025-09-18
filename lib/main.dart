import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pemutar Musik',
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Center(
          child: Text('Pemutar Musik', style: TextStyle(fontSize: 20)),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          color: Colors.black54,
          child: Row(
            children: [
              Expanded(
                child: Icon(Icons.shuffle, color: Colors.white, size: 30),
              ),
              Expanded(
                child: Icon(Icons.skip_previous, color: Colors.white, size: 30),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: Icon(
                  Icons.play_circle_fill,
                  color: Colors.white,
                  size: 60,
                ),
              ),
              Expanded(
                child: Icon(Icons.skip_next, color: Colors.white, size: 30),
              ),
              Expanded(
                child: Icon(Icons.repeat, color: Colors.white, size: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
