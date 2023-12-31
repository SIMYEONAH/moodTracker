import 'package:finalmood/constants/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../models/mood_view_model.dart';
import '../repos/mood_repo.dart';

class WriteScreen extends ConsumerStatefulWidget {
  static String routeName = "write";
  static String routeURL = "/write";
  const WriteScreen({super.key});

  @override
  ConsumerState<WriteScreen> createState() => _WriteScreenState();
}

class _WriteScreenState extends ConsumerState<WriteScreen> {
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffdfe6e9),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gaps.v24,
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
                // maxLength: 5,
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
            Gaps.v36,
            const Text(
              "What's your mood today?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Gaps.v12,
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
                      fontSize: 35,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    mood = '\u{1F618}';
                  },
                  child: const Text(
                    '\u{1F618}',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    mood = '\u{1F61E}';
                  },
                  child: const Text(
                    '\u{1F61E}',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    mood = '\u{1F62D}';
                  },
                  child: const Text(
                    '\u{1F62D}',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    mood = '\u{1F622}';
                  },
                  child: const Text(
                    '\u{1F622}',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    mood = '\u{1F621}';
                  },
                  child: const Text(
                    '\u{1F621}',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                ),
              ],
            ),
            Gaps.v48,
            Container(
              height: 45,
              width: 320,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    // blurRadius: 2,
                    spreadRadius: 0,
                    offset: Offset(5, 3),
                  ),
                ],
                color: const Color(0xffb2bec3),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextButton(
                  onPressed: () {
                    ref.watch(moodProvider.notifier).createMood(
                          ref.read(moodRepo).moodID,
                          mood,
                          content,
                          formatDate,
                        );
                  },
                  child: const Text(
                    "Post",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
