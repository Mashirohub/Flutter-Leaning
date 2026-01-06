import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<page1> {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('สมัครสมาชิก'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'ชื่อ'),
                onSaved: (value) => _name = value ?? '',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณากรอกชื่อ';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'อีเมล'),
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) => _email = value ?? '',
                validator: (value) {
                  if (value == null || !value.contains('@')) {
                    return 'กรุณากรอกอีเมลให้ถูกต้อง';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'รหัสผ่าน'),
                obscureText: true,
                onSaved: (value) => _password = value ?? '',
                validator: (value) {
                  if (value == null || value.length < 6) {
                    return 'รหัสผ่านต้องอย่างน้อย 6 ตัวอักษร';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'สมัครสมาชิกสำเร็จ\nชื่อ: $_name\nอีเมล: $_email',
                  ),
                  duration: const Duration(seconds: 3),
                ),
              );
            }
          },
          child: const Text('สมัครสมาชิก'),
        ),
            ],
          ),
        ),
      ),
    );
  }
}

