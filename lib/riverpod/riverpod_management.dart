import 'package:ecommercemobile/riverpod/bottom_nav_bar_riverpod.dart';
import 'package:ecommercemobile/riverpod/product_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavBarRiverpod =
    ChangeNotifierProvider((_) => BottomNavBarRiverpod());
// final bottomNavBarRiverpod2 = BottomNavBarRiverpod();
final productRiverpod = ChangeNotifierProvider((_) => ProductRiverpod());
final prRv = ProductRiverpod();
