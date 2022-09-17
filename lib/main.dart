import 'package:flutter/material.dart';
import 'package:helloworld/helloWorld.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sekolah Beta Eric',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HelloWorld(title: 'Flutter Demo Home Page'),
    );
  }
}
