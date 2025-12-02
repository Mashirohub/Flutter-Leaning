import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar Section 1'),
        backgroundColor: Colors.black87,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        width: 300,
        height: 400,
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.all(50),

        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(
            color: Colors.black,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(15),
        ),

        child: Container(
          width: 100,
          height: 100,
          color: Colors.blueAccent,
        ),
        
        
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
