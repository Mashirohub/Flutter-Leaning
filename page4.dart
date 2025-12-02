import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  // สร้างข้อมูล List
  final List<String> items = List<String>.generate(20, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar Section 4'),
        backgroundColor: Colors.black87,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: Icon(Icons.shopping_cart),
              title:Text(items[index]),
              subtitle: Text('Price : ${(index + 1) * 100} Baht'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){

                // สร้าง SnackBar
                final snackbar = SnackBar(
                  content: Text('You tapped on ${items[index]}'),
                  duration: Duration(seconds: 2),
                );

                // แสดงผล snackbar
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
            ),
          );
        },
      ),
    );
  }
}
