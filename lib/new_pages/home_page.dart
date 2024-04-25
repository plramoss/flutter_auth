import 'package:flutter/material.dart';

class NewHomePage extends StatelessWidget {
  const NewHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('New Home Page')),
        body: const Column(
          children: <Widget>[
            Center(
              child: Text('New Home Page'),
            )
          ],
        ));
  }
}
