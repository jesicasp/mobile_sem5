import 'package:belajarflut/insertuser.dart';
import 'package:flutter/material.dart';


class ListUser extends StatefulWidget {
  @override
  State<ListUser> createState() => _ListUserState();
}

class _ListUserState extends State<ListUser> {
  final List<Map<String, String>> listAllUser = [
    {"username": "John Doe", "address": "123 Main Street"},
    {"username": "Jane Smith", "address": "456 Oak Avenue"},
    {"username": "Bob Johnson", "address": "789 Pine Drive"},
    // Add more data as needed
  ];
  final List<Map<String,String>> listUser = [];
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.green,
          title: Text('List User'),
          centerTitle: true,
          leading: Icon(Icons.person),
          actions: [Icon(Icons.search)],
        ),
        body: ListView.builder(
          itemCount: listAllUser.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(Icons.person_add_alt_1_rounded,
                    color: Colors.red, size: 24),
                title: Text(
                  listAllUser[index]["username"]!,
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  listAllUser[index]["address"]!,
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 13,
                      fontWeight: FontWeight.normal),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        // Add your add action here
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.red,
                        size: 24,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 24,
                      ),
                      onPressed: () {
                        // Add your delete action here
                        // You can remove the item from the list if needed.
                      },
                    )
                  ],
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>InsertUser()));
        }),
      ),
    );
  }
}
