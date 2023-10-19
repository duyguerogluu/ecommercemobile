import 'package:ecommercemobile/screens/basket_screen.dart';
import 'package:ecommercemobile/screens/favorite_screen.dart';
import 'package:ecommercemobile/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBarRiverpod extends ChangeNotifier {
  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      label: "Anasayfa",
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.heart),
      label: "Favoriler",
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.bag),
      label: "Sepetim",
    ),
  ];

  int currentIndex = 0;

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return HomeScreen();
      case 1:
        return FavoriteScreen();
      case 2:
        return BasketScreen();
      default:
        return HomeScreen();
    }
  }
}
