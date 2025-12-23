import 'package:flutter/material.dart';

class Page7 extends StatelessWidget {
  const Page7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar Section 7'),
        backgroundColor: Colors.black87,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(padding:  EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: 'ชื่อผู้ใช้',
              helperText: 'ชื่อผู้ใช้ต้องมีอย่างน้อย 6 ตัวอักษร',
              enabledBorder: UnderlineInputBorder(),
              focusedBorder: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
            keyboardType: TextInputType.name,
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(),
              focusedBorder: OutlineInputBorder(),
              labelText: 'อายุ',
              helperText: 'อายุต้องเป็นตัวเลข',
              prefixIcon: Icon(Icons.cake),
            ),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(),
              focusedBorder: OutlineInputBorder(),
              labelText: 'เบอร์โทรศัพท์',
              helperText: 'เบอร์โทรศัพท์ต้องเป็นตัวเลข',
              prefixIcon: Icon(Icons.phone),

            ),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(),
              focusedBorder: OutlineInputBorder(),
              labelText: 'อีเมล',
              helperText: 'อีเมลต้องเป็นรูปแบบที่ถูกต้อง',
              prefixIcon: Icon(Icons.email),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ],
      ),
      ),
    );
  }
}
