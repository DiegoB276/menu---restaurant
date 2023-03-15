import 'package:flutter/material.dart';
import 'package:food_menu/models/food.dart';
import 'package:food_menu/widget/my_drawer.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/product_tile.dart';
import 'details_page.dart';

class CakePage extends StatefulWidget {
  const CakePage({super.key});

  @override
  State<CakePage> createState() => _CakePageState();
}

class _CakePageState extends State<CakePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 100, 69, 43),
        elevation: 0,
        title: Text("Postres", style: GoogleFonts.lilitaOne(fontSize: 30)),
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      body: ListView.builder(
        itemCount: listCakes.length,
        itemBuilder: (BuildContext context, int index) {
          Food food = listCakes[index];
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailsPage(food: food),
                ),
              );
            },
            child: ProductTile(
              name: food.foodName,
              description: food.description,
              price: food.price,
              pathImage: food.pathImage,
            ),
          );
        },
      ),
    );
  }
}
