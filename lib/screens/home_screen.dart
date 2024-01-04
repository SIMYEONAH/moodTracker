import 'package:finalmood/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repos/user_repo.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static const routeName = 'home';
  static const routeURL = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdfe6e9),
      appBar: AppBar(
        backgroundColor: const Color(0xffdfe6e9),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'MOOD',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: Sizes.size24,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "${ref.watch(authRepo).user!.email!} 환영합니다!",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // FutureBuilder(builder: (context, snapshot))
          ],
        ),
      ),
    );
  }
}
