import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'list_user.dart';

class InsertNewUser extends StatefulWidget {
  const InsertNewUser({super.key});

  @override
  State<InsertNewUser> createState() => _InsertNewUserState();
}

class _InsertNewUserState extends State<InsertNewUser> {
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _email = TextEditingController();
  final _address = TextEditingController();

  void clearText(){
    _username.clear();
    _password.clear();
    _email.clear();
    _address.clear();
  }

  Future<void> addNewUser()async{
    String urlInsertUser = "https://jesicasp.000webhostapp.com/insertuser.php";
    try{
      var responseInsert = await http.post(Uri.parse(urlInsertUser), 
      body:{"username":_username.text.toString(),
      "password":_password.text.toString(),
      "email":_email.text.toString(),
      "address":_address.text.toString()});
      var insertNewUser = json.decode(responseInsert.body);

      var newUser = json.decode(responseInsert.body);
      if (newUser == "true") {
        print("Data User Baru Berhasil dItambahkan");
      } else {
        print("Data User Baru Gagal dItambahkan");
      }
    }catch(exc){
      print(exc);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add New User",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.green.shade200,
      ),
      body: Center(
        child: Container(
          width: 350, // Adjust the width as needed
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: TextField(
                  controller: _username,
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    hintText: "Enter Username",
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                    suffixIcon: Icon(
                      Icons.people_rounded,
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.green,
                      ),
                      
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: TextField(
                  controller: _password,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    hintText: "Enter Password",
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                    suffixIcon: Icon(
                      Icons.password_outlined,
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.green,
                      ),
                     
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: TextField(
                  controller: _email,
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    hintText: "Enter Email",
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                    suffixIcon: Icon(
                      Icons.email,
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.green,
                      ),
                     
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: TextField(
                  controller: _address,
                  decoration: InputDecoration(
                    labelText: "Address",
                    labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    hintText: "Enter Address",
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                    suffixIcon: Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.green,
                      ),
                      
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () async {
                  addNewUser();
                  clearText();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListAllUser()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  fixedSize: Size(150, 50),
                ),
                child: Text("Add User", style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
