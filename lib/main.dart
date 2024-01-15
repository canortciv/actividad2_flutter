// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(185, 129, 91, 1)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Actividad 2 Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _selectedColor = Colors.transparent;

  void _onColorButtonPressed(Color color) {
    setState(() {
      _selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.favorite,
                color: _selectedColor == Colors.transparent ? Colors.black : _selectedColor,
                size: 80.0,
              ),
              SizedBox(width: 8),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => _onColorButtonPressed(Colors.red),
                style: ElevatedButton.styleFrom(
                  primary: _selectedColor == Colors.red ? Colors.red : Colors.transparent,
                ),
                child: Text(
                  'Rojo',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                onPressed: () => _onColorButtonPressed(Colors.green),
                style: ElevatedButton.styleFrom(
                  primary: _selectedColor == Colors.green ? Colors.green : Colors.transparent,
                ),
                child: Text(
                  'Verde',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                onPressed: () => _onColorButtonPressed(Colors.blue),
                style: ElevatedButton.styleFrom(
                  primary: _selectedColor == Colors.blue ? Colors.blue : Colors.transparent,
                ),
                child: Text(
                  'Azul',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
