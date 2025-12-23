import 'package:flutter/material.dart';

class Page8 extends StatefulWidget {
  const Page8({super.key});

  @override
  State<Page8> createState() => _Page8State();
}

class _Page8State extends State<Page8> {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _agecontroller = TextEditingController();
  final TextEditingController _weightcontroller = TextEditingController();
  final TextEditingController _heightcontroller = TextEditingController();

  String _result = '';

  @override
  void dispose() {
    _namecontroller.dispose();
    _agecontroller.dispose();
    _weightcontroller.dispose();
    _heightcontroller.dispose();
    super.dispose();
  }

void calBMI() {
    String name = _namecontroller.text;
    int age = int.parse(_agecontroller.text) ;
    double weight = double.parse(_weightcontroller.text) ;
    double heightCm = double.parse(_heightcontroller.text) /100;

    double bmi = weight / (heightCm * heightCm);

    setState(() {
      _result = 'ชื่อ: $name\n'
                 'อายุ: $age\n'
                 'น้ำหนัก: ${weight.toStringAsFixed(2)} กก.\n'
                 'ส่วนสูง: ${heightCm.toStringAsFixed(2)} ซม.\n'
                 'ค่าดัชนีมวลกาย (BMI): ${bmi.toStringAsFixed(2)}';

    });
    
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar Section 8'),
        backgroundColor: Colors.black87,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 1,
        itemBuilder: (context, index) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _namecontroller,
              decoration: InputDecoration(
              labelText: 'ชื่อผู้ใช้',
              helperText: 'ชื่อผู้ใช้ต้องมีอย่างน้อย 6 ตัวอักษร',
              enabledBorder: UnderlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all( Radius.circular(15.0)),),
              prefixIcon: Icon(Icons.person),
            ),
            keyboardType: TextInputType.name,
            ),
            SizedBox(height: 20),

             TextField(
              controller: _agecontroller,
              decoration: InputDecoration(
              labelText: 'อายุ',
              helperText: 'อายุต้องเป็นตัวเลข',
              enabledBorder: UnderlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all( Radius.circular(15.0)),),
              prefixIcon: Icon(Icons.cake),
            ),
            keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),

             TextField(
              controller: _weightcontroller,
              decoration: InputDecoration(
              labelText: 'น้ำหนัก',
              helperText: 'กรุณากรอกน้ำหนักเป็นตัวเลข',
              enabledBorder: UnderlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all( Radius.circular(15.0)),),
              prefixIcon: Icon( Icons.fitness_center),
            ),
            keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),

             TextField(
              controller: _heightcontroller,
              decoration: InputDecoration(
              labelText: 'ส่วนสูง',
              helperText: 'กรุณากรอกส่วนสูงเป็นตัวเลข',
              enabledBorder: UnderlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all( Radius.circular(15.0)),),
              prefixIcon: Icon(Icons.align_horizontal_center),
            ),
            keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  calBMI();
                });
              },
              child: Text('คำนวณค่า BMI'),
            ),
            SizedBox(height: 20),
            Dialog(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  _result,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
