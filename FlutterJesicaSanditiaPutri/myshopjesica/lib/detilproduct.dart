import 'package:flutter/material.dart';
import 'package:myshopjesica/productitems.dart';

class DetilProduct extends StatefulWidget {
  const DetilProduct({super.key, @required this.productIndex});
  final productIndex;

  @override
  State<DetilProduct> createState() => _DetilProductState();
}

class _DetilProductState extends State<DetilProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share, size: 24, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag, size: 24, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, size: 24, color: Colors.black),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(items[widget.productIndex][0],
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.red,
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
                    items[widget.productIndex][1],
                    scale: 0.2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            items[widget.productIndex][2],
            style: TextStyle(
                fontSize: 22, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Product Size",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(20),
                child: DropdownButton(
                  items: const [
                    DropdownMenuItem(
                      value: 5,
                      child: Text(
                        "S",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 10,
                      child: Text(
                        "M",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 15,
                      child: Text(
                        "XL",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 250,
            height: 50,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(),
                child: Text(
                  "BUY",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
    );
  }
}
