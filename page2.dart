import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar Section 2'),
        backgroundColor: Colors.black87,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Text 1'),
          Text('Text 2'),
          Text('Text 3'),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text('red', style: TextStyle(color: Colors.white ,fontSize: 22),),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: Text('green', style: TextStyle(color: Colors.white ,fontSize: 22),),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text('blue', style: TextStyle(color: Colors.white ,fontSize: 22),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
