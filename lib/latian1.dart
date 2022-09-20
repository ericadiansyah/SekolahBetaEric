import 'package:flutter/material.dart';

class Latian1 extends StatefulWidget {
  const Latian1({Key? key}) : super(key: key);

  @override
  State<Latian1> createState() => _Latian1State();
}

class _Latian1State extends State<Latian1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          'Halo saya latian',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text('saya widget ditengah'),
          Container(
            height: 40,
            color: Colors.red,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('saya kiri'),
              Text('saya kanan'),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 50,
            color: Colors.yellow,
            child: Container(
              height: 30,
              color: Colors.purple,
              child: Center(
                child: Text(
                  'saya berwarna',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(child: SizedBox()),
          Stack(
            children: [
              Container(
                height: 80,
                color: Colors.black,
                child: Center(
                  child: Text(
                    'Saya dibawah sendiri',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                bottom: 0,
                right: 10,
                child: FloatingActionButton(
                  backgroundColor: Colors.yellow,
                  onPressed: () {},
                  child: Text('XXX'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
