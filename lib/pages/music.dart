import 'package:flutter/material.dart';

class music extends StatefulWidget {
  const music({Key? key}) : super(key: key);

  @override
  _musicState createState() => _musicState();
}

class _musicState extends State<music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Polyhia'),
            Center(
              child: Image.asset('assets/1975.jpeg'),
            )
          ],
        ),
      ),
    );
  }
}
