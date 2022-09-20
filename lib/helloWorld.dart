import 'package:flutter/material.dart';

class HelloWidget extends StatelessWidget {
  const HelloWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Hello Widget'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          )),
      body: Container(
        color: Colors.white,
        constraints: BoxConstraints.expand(),
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
    );
  }
}
