import 'package:finalmood/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home';
  static const routeURL = '/';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdfe6e9),
      appBar: AppBar(
        backgroundColor: const Color(0xffdfe6e9),
        elevation: 0,
        title: const Text(
          'MOOD',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: Sizes.size24,
          ),
        ),
      ),
      body: const Center(
        child: Text('Hello'),
      ),
    );
  }
}
