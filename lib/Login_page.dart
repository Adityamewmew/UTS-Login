import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 100, color: Colors.indigo),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email Anda',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.indigo[50],
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password Anda',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.indigo[50],
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    Future.delayed(Duration(milliseconds: 200), () {
                      Navigator.pop(context);
                      Navigator.pushReplacementNamed(context, '/profile');
                    });

                    return AlertDialog(
                      title: Text('Berhasil Login'),
                      content: Text('Selamat Datang "Adityamewtwo".'),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text('Login', style: TextStyle(fontSize: 18)),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text(
                  'Belum punya akun? Daftar',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
