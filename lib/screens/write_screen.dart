import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WriteScreen extends StatefulWidget {
  static String routeName = "write";
  static String routeURL = "/write";
  const WriteScreen({super.key});

  @override
  State<WriteScreen> createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> {
  String formatDate = DateFormat('yy/MM/dd - HH:mm:ss').format(DateTime.now());

  final TextEditingController _contentController = TextEditingController();
  late String content;
  late String mood;

  @override
  void initState() {
    super.initState();
    _contentController.addListener(() {
      setState(() {
        content = _contentController.value.text;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _contentController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdfe6e9),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              "How Do You Feel?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              width: 350,
              height: 200,
              child: TextField(
                controller: _contentController,
                cursorHeight: 15,
                cursorColor: Colors.transparent,
                maxLength: 5,
                style: const TextStyle(
                  fontSize: 16,
                ),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  hintText: "Write your feelings here!",
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "What's your mood today?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    mood = '\u{1F601}';
                  },
                  child: const Text(
                    '\u{1F601}',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
