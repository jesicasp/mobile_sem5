import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myshopjesica/detilproduct.dart';
import 'package:myshopjesica/productitems.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
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
            padding: EdgeInsets.all(20),
            child: Text(
              "Product List",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: (1 / 1)),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetilProduct(
                          productIndex: index,
                        ),
                      ),
                    );
                  },
                  child: Material(
                    elevation: 20,
                    borderRadius: BorderRadius.circular(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /* Padding(padding: const EdgeInsets.only(top:20),
        child:
        Text() ,), */
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Image.asset(items[index][1],
                              width: 100, height: 100, scale: 0.7),
                        ),
                        Text(
                          items[index][0],
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.red,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Text(
                            items[index][2],
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.green,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
