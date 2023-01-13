import 'package:flutter/material.dart';
import 'package:food_menu/models/food.dart';
import 'package:food_menu/widget/product_tile.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/my_drawer.dart';
import 'details_page.dart';

class ColdDrinksPage extends StatefulWidget {
  const ColdDrinksPage({super.key});

  @override
  State<ColdDrinksPage> createState() => _ColdDrinksPageState();
}

class _ColdDrinksPageState extends State<ColdDrinksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 100, 69, 43),
        elevation: 0,
        title:
            Text("Bebidas Frías", style: GoogleFonts.lilitaOne(fontSize: 30)),
        centerTitle: true,
      ),
      //Drawer AppBar
      drawer: const MyDrawer(),

      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: ListView.builder(
          itemCount: listColdDrinks.length,
          itemBuilder: (BuildContext context, int index) {
            Food food = listColdDrinks[index];
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
      ),
    );
  }
}
