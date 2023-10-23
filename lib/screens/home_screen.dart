import 'package:ecommercemobile/components/product_widget.dart';
import 'package:ecommercemobile/models/product_model.dart';
import 'package:ecommercemobile/riverpod/riverpod_management.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("Ürünler",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontSize: 16)),
                Container(
                  height: deviceHeight * 0.78,
                  child: ListView.builder(
                    itemCount: prRv.products.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: ProductWidget(
                          model: prRv.products[index],
                          setBasket: () {},
                          setFavorite: () {},
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
