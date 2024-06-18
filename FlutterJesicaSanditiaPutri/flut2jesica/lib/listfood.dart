import 'package:flutter/material.dart';

class ListFood extends StatefulWidget {
  const ListFood({super.key});

  @override
  State<ListFood> createState() => _ListFoodState();
}

class _ListFoodState extends State<ListFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(
          "Restaurant Menu List",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 24,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_rounded,
              size: 24,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Card(
        margin: EdgeInsets.all(10),
        elevation: 20,
        shadowColor: Colors.green.shade50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Food List",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Image.asset(
                  "images/puding.jpg",
                  height: 100,
                  width: 100,
                ),
                title: Text(
                  "Puding",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Soft and Creamy American Pudding Dessert Creme Caramel Custard ",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete, size: 24, color: Colors.red),
                    Icon(Icons.add, size: 24, color: Colors.red),
                  ],
                ),
              ),
              ListTile(
                leading: Image.asset(
                  "images/biskuit.jpg",
                  height: 100,
                  width: 100,
                ),
                title: Text(
                  "Biskuit",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Dark Chocolate Soft Chunky Cookie Pop Cookies",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete, size: 24, color: Colors.red),
                    Icon(Icons.add, size: 24, color: Colors.red),
                  ],
                ),
              ),
              ListTile(
                leading: Image.asset(
                  "images/bluecake.jpg",
                  height: 100,
                  width: 100,
                ),
                title: Text(
                  "Blueberry Cake",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Blueberry cake flavored with both freeze dried berries and fresh",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete, size: 24, color: Colors.red),
                    Icon(Icons.add, size: 24, color: Colors.red),
                  ],
                ),
              ),
              ListTile(
                leading: Image.asset(
                  "images/cake.jpg",
                  height: 100,
                  width: 100,
                ),
                title: Text(
                  "Chocolate Cake ",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Chocolate cake flavored with both freeze dried berries and fresh",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete, size: 24, color: Colors.red),
                    Icon(Icons.add, size: 24, color: Colors.red),
                  ],
                ),
              ),
              ListTile(
                leading: Image.asset(
                  "images/cookies.jpg",
                  height: 100,
                  width: 100,
                ),
                title: Text(
                  "Choco Cake ",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Chocolate cake flavored with both freeze dried strawberry and fresh",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete, size: 24, color: Colors.red),
                    Icon(Icons.add, size: 24, color: Colors.red),
                  ],
                ),
              ),
              ListTile(
                leading: Image.asset(
                  "images/egg.jpg",
                  height: 100,
                  width: 100,
                ),
                title: Text(
                  "Egg Breakfast",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Egg Bacoon Breakfast with bacoon",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete, size: 24, color: Colors.red),
                    Icon(Icons.add, size: 24, color: Colors.red),
                  ],
                ),
              ),
              ListTile(
                leading: Image.asset(
                  "images/nasisosis.jpeg",
                  height: 100,
                  width: 100,
                ),
                title: Text(
                  "Sausage Egg Breakfast",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Sausage with Egg for Perfect Breakfast",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete, size: 24, color: Colors.red),
                    Icon(Icons.add, size: 24, color: Colors.red),
                  ],
                ),
              ),
              ListTile(
                leading: Image.asset(
                  "images/pancake.jpg",
                  height: 100,
                  width: 100,
                ),
                title: Text(
                  "Pancake",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Three Margarin Pancake Flippino Hotcakes ",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete, size: 24, color: Colors.red),
                    Icon(Icons.add, size: 24, color: Colors.red),
                  ],
                ),
              ),
              ListTile(
                leading: Image.asset(
                  "images/redvelvet.jpg",
                  height: 100,
                  width: 100,
                ),
                title: Text(
                  "Redvelvet Cake",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Redvelvet layers cake with almond cream cheese",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete, size: 24, color: Colors.red),
                    Icon(Icons.add, size: 24, color: Colors.red),
                  ],
                ),
              ),
              ListTile(
                leading: Image.asset(
                  "images/souffle.jpg",
                  height: 100,
                  width: 100,
                ),
                title: Text(
                  "Souffle",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Japanese Souffle Fluffy Pancakes",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete, size: 24, color: Colors.red),
                    Icon(Icons.add, size: 24, color: Colors.red),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
