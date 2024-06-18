import 'package:flutter/material.dart';
import 'package:uastrpl3cjesicasanditiaputri/hotelitem.dart';

class DetilHotel extends StatefulWidget {
  const DetilHotel({super.key, @required this.hotelIndex});
  final hotelIndex;
  

  @override
  State<DetilHotel> createState() => _DetilHotelState();
}

class _DetilHotelState extends State<DetilHotel> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Aplikasi Hotel",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Icon(Icons.house),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          Icon(
            Icons.notifications_active,
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(items[widget.hotelIndex][0],
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 20),
          Center(
            child: Stack(
              children: [
                Container(
                  width: 300,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                   child: Image.asset(
                    items[widget.hotelIndex][1],
                    scale: 0.2,
                  ), 
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
           Text(
            items[widget.hotelIndex][2],
            style: TextStyle(
                fontSize: 22, color: Colors.red, fontWeight: FontWeight.bold),
          ), 
          SizedBox(height: 20),
          
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(),
                child: Text(
                  "Pesan Hotel",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
    );
  }
}
