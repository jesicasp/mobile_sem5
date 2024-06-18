import 'package:flutter/material.dart'; //package dasar flutter dalam sini

class DataMahasiswa extends StatefulWidget {
  //statefulW
  const DataMahasiswa({super.key});
  @override
  State<DataMahasiswa> createState() => _DataMahasiswaState();
}

class _DataMahasiswaState extends State<DataMahasiswa> {
  TextEditingController namaMahasiswa = TextEditingController();
  TextEditingController prodiMahasiswa = TextEditingController();

  String nama = "";
  String prodi = "";

  void getDataMahasiswa() {
    setState(() {
    nama = namaMahasiswa.text;
    prodi = prodiMahasiswa.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //fungsi untuk bikin layout dan logic
      appBar: AppBar(
        title: Text(
          "Politeknik Negeri Padang",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green.shade400,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //agar sumbu axis x ada di tengah layar
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(
                  30, 40, 30, 40), //ltrb jika kita ingin jarak nya presisi
              child: Text(
                "Data Mahasiswa",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                  controller: namaMahasiswa,
                  decoration: InputDecoration(
                    labelText: "Nama Mahasiswa",
                    labelStyle: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    hintText: "Input Nama Mahasiswa",
                    hintStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                    suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.person_outline_rounded,
                        size: 24,
                        color: Colors.red,
                      ),
                    ),
                    fillColor: Colors.green.shade50,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.green,
                            width: 2,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        )),
                  ),
                  maxLength: 30),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                  controller: prodiMahasiswa,
                  decoration: InputDecoration(
                    labelText: "Prodi Mahasiswa",
                    labelStyle: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    hintText: "Input Prodi Mahasiswa",
                    hintStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                    suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.home_outlined,
                        size: 24,
                        color: Colors.red,
                      ),
                    ),
                    fillColor: Colors.green.shade50,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.green,
                            width: 2,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        )),
                  ),
                  maxLength: 30),
            ),
            SizedBox(
              height: 50,
              width: 160,
              child: ElevatedButton(
                onPressed: () {
                  getDataMahasiswa();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade400,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(
                        color: Colors.green,
                        width: 2,
                        style: BorderStyle.solid),
                  ),
                ),
                child: Text(
                  "SUBMIT",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 40,
              width: 200,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Text(
                "Data Mahasiswa : \nNama : $nama \nProdi : $prodi",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 17,
                    fontWeight: FontWeight.normal),
              ),
            )
          ],
        ),
      ),
    ); //layout dan logic scaffold
  }
}
