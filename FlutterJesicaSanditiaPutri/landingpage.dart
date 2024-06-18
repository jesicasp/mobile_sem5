import 'package:flutter/material.dart';
import 'package:myshopjesica/productlist.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/logo.png',  
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Selamat Datang di My Shop Jesica',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Temukan produk terbaru dan penawaran menarik!',
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 138, 137, 137)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductList()),
                  );
              },
              child: Text('Mulai Berbelanja'),
            ),
          ],
        ),
      ),
    );
  }
}
