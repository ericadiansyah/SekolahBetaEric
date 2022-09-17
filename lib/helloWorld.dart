import 'package:flutter/material.dart';

class HelloWorld extends StatefulWidget {
  const HelloWorld({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HelloWorld> createState() => _HelloWorldState();
}

class _HelloWorldState extends State<HelloWorld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hello',
                style: TextStyle(fontSize: 40, color: Colors.black),
                textDirection: TextDirection.ltr,
              ),
              Text(
                'World',
                style: TextStyle(
                    fontSize: 60,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
                textDirection: TextDirection.ltr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
