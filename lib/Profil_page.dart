import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: ProfilePage()));

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.indigo[50],
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(height: 30),
            Text("Nama    : Aditya Purnama Herlambang", style: TextStyle(fontSize: 22)),
            SizedBox(height: 10),
            Text("Email   : purnamaaditya939@gmail.com", style: TextStyle(fontSize: 22)),
            SizedBox(height: 10),
            Text("Alamat  : Banyuwangi, Pengantigan", style: TextStyle(fontSize: 22)),
            SizedBox(height: 10),
            Text("No telp : 081249155653", style: TextStyle(fontSize: 22)),
            SizedBox(height: 50),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: Text(
                  'Keluar',
                  style: TextStyle(color: Colors.green, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
