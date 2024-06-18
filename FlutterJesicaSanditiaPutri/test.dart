//main.dart

import 'package:flutter/material.dart';
import 'package:myshopjesica/productlist.dart';
import 'package:myshopjesica/splash.dart';

import 'list_user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.green,
      ),
      home: const Splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

//detailproduct.dart
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



//insertdatauser.dart
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

//landingpage.dart

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

//listuser.dart

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myshopjesica/insertdatauser.dart';

class ListAllUser extends StatefulWidget {
  const ListAllUser({super.key});

  @override
  State<ListAllUser> createState() => _ListAllUserState();
}

class _ListAllUserState extends State<ListAllUser> {
  List listAllUser = [];

  @override
  void initState() {
    allUser();
    super.initState();
  }

  Future<void> allUser() async {
    String url_all_user = "https://jesicasp.000webhostapp.com/listalluser.php";
    try {
      var response = await http.get(Uri.parse(url_all_user));
      listAllUser = jsonDecode(response.body);
      setState(() {
        listAllUser = jsonDecode(response.body);
      });
    } catch (exc) {
      print(exc);
    }
  }

  Future<void> deleteUser(String id) async {
    String urlDeleteUser = "https://jesicasp.000webhostapp.com/deleteuser.php";
    try {
      var responseDelete = await http.post(Uri.parse(urlDeleteUser), body:{
        "id":id
      });
      var deleteUser= jsonDecode(responseDelete.body);
      if(deleteUser ["success"]=="true"){
        allUser();
        print("Hapus Data User Berhasil");
      }else{
        print("Hapus Data User Gagal");
      }
      } catch (exc) {
      print(exc);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu_book,
          color: Colors.white,
          size: 24,
        ),
        title: Text(
          "All User Account",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.green.shade200,
        actions: [
          Icon(Icons.search, color: Colors.white, size: 24),
        ],
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
                listAllUser[index]["username"],
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                listAllUser[index]["address"],
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 13,
                    fontWeight: FontWeight.normal),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.add_circled_solid,
                      color: Colors.red,
                      size: 24,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      CupertinoIcons.delete_left_fill,
                      color: Colors.red,
                      size: 24,
                    ),
                     onPressed: () {
                       deleteUser(listAllUser[index]["id"]);
                       allUser();
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => InsertNewUser()),
          );
        },
        splashColor: Colors.green,
        backgroundColor: Colors.green.shade300,
        child: Icon(
          Icons.add,
          size: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}


//productitem.dart

var items = [
  ["Cap","./lib/assets/cap.png", "Rp. 200000"],  
  ["Jeans","./lib/assets/jeans.png", "Rp. 3990000"],
  ["Shoes","./lib/assets/shoes.png", "Rp. 350000"], 
  ["T-Shirt","./lib/assets/tshirt.png", "Rp. 150000"],
  ["Shirt","./lib/assets/shirt.png", "Rp. 100000"],
  ["Dress","./lib/assets/dress.png", "Rp. 380000"]
];

var cart = [];


//productlist.dart

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


//splash.dart

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







