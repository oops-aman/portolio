import 'package:flutter/material.dart';
import 'package:portfolio_aman/screens/mobile_home_screen.dart';
import 'package:portfolio_aman/screens/web_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1100) {
          return const WebHomeScreen();
        } else {
          return const MobileHomeScreen();
        }
      },
    );
  }
}
