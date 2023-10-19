import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      items: [
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
      ],
    );
  }
}
