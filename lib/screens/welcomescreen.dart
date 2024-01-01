import 'package:finalmood/constants/gaps.dart';
import 'package:finalmood/screens/loginscreen.dart';
import 'package:finalmood/screens/signupscreen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Column(
                children: <Widget>[
                  Text(
                    "Welcome",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Gaps.h24,
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(right: 3, bottom: 3),
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(50),
                    //   border: const Border(
                    //     bottom: BorderSide(color: Colors.black),
                    //     top: BorderSide(color: Colors.black),
                    //     left: BorderSide(color: Colors.black),
                    //     right: BorderSide(color: Colors.black),
                    //   ),
                    // ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      color: const Color(0xffffeaa7),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 3,
                      left: 3,
                      right: 3,
                      bottom: 3,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      // border: const Border(
                      //   bottom: BorderSide(color: Colors.black),
                      //   top: BorderSide(color: Colors.black),
                      //   left: BorderSide(color: Colors.black),
                      //   right: BorderSide(color: Colors.black),
                      // ),
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ),
                        );
                      },
                      color: const Color(0xff74b9ff),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
