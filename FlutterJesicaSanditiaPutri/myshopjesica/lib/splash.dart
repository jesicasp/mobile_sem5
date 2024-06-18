import 'package:flutter/material.dart';
import 'package:myshopjesica/productlist.dart';

import 'landingpage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2500), (){});
    Navigator.pushReplacement(context,  MaterialPageRoute(builder: (context)=>LandingPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 300, width: 300, 
            child: Image.asset('lib/assets/logo.png'),),
          ],
        ),
      ),
    );
  }
  
  
}