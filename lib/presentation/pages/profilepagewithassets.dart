import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePageWithAssets(),
    );
  }
}

class ProfilePageWithAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile With Assets'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Display the profile image from assets
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(
                    '/root/perkuliahan/pemrograman_mobile/projek/pert3/assets/images/profile.jpg'),
              ),
              SizedBox(height: 20),
              // User details
              Text(
                'Nur Muhammad Fadilah',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'muhammfadilah7@stundent.esaunggul.ac.id',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const Divider(),
              SizedBox(height: 10),
              Text(
                'Hi, My name is Nur Muhammad Fadilah, a passionate programmer specialized in Web Development',
                style: TextStyle(
                  fontSize: 16, // Fixed font size
                  color: Colors.black87,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
