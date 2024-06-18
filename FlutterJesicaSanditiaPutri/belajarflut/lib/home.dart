import 'package:belajarflut/petparent.dart';
import 'package:belajarflut/pettypes.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Center(
          child: Text(
            "Adopt A Paw",
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                // Aksi yang diambil ketika Pet Types diklik
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PetTypes()),
                );
              },
              child: Container(
                height: 125,
                width: 125,
                color: Colors.green,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Pet Types",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    Icon(
                      Icons.pets,
                      size: 60,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ), 
            SizedBox(
              width: 10,
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PetParent()));
              },
              child: Container(
                width: 125,
                height: 125,
                color: Colors.amber,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Pet Parent",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    Icon(
                      Icons.people,
                      size: 60,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ], 
        ), 
      ), 
    );
  }
}
