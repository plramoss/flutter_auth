import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  void signOut() {
    FirebaseAuth.instance.signOut();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Home', style: TextStyle(color: Colors.white)),
                IconButton(
                  onPressed: signOut,
                  icon: const Icon(Icons.logout, color: Colors.white, size: 20,)
                ),
              ],
            )
        ),
      ),
      body: Center(
        child: Text('Welcome! You are logged as ${user.email}!'),
      ),
    );
  }
}
