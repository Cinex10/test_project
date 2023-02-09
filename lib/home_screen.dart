import 'package:flutter/material.dart';
import 'package:foo/content_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ContentScreen(),
          )),
          child: const Text('Go to next screen'),
        ),
      ),
    );
  }
}
