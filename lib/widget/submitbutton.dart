import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      margin: const EdgeInsets.symmetric(vertical: 15),
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        onPressed: () {},
        child: const Text("Create Account"),
      ),
    );
  }
}
