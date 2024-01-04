import 'package:finalmood/screens/home_screen.dart';
import 'package:finalmood/screens/write_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainNavigationScreen extends StatefulWidget {
  static String routeName = "main";
  static String routeURL = "/";
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MainNavigationScreen> {
  final int _selectedIndex = 0;

  static List<Widget> pages = [const HomeScreen(), const WriteScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdfe6e9),
      body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
        child: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              // _selectedIndex = index;
            });
          },
          iconSize: 22,
          selectedItemColor: Colors.black,
          elevation: 1,
          backgroundColor: const Color(0xffdfe6e9),
          currentIndex: _selectedIndex,
          items: const [
            BottomNavigationBarItem(
              label: "",
              icon: FaIcon(
                FontAwesomeIcons.house,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: FaIcon(
                FontAwesomeIcons.pen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
