import 'package:flutter/material.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to My Page'),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _controller.onGoToProfilePagePressed();
              },
              child: Text('Profiles With Image URL'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _controller.onGoToProfilePageWithAssetsPressed();
              },
              child: Text('Profile With Assets'),
            ),
          ],
        ),
      ),
    );
  }
}
