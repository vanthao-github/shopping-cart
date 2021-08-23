import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      backgroundColor: Colors.cyanAccent,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.category), label: "Categories"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_outlined), label: "Account"),
      ],
    );
  }
}
