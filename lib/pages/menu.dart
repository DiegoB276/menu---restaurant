import 'package:flutter/material.dart';
import 'package:food_menu/models/food.dart';
import 'package:food_menu/pages/details_page.dart';
import 'package:food_menu/widget/my_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/product_tile.dart';

class AppMenu extends StatelessWidget {
  const AppMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 100, 69, 43),
        elevation: 0,
        title: Text("Platos", style: GoogleFonts.lilitaOne(fontSize: 30)),
        centerTitle: true,
      ),
      //Drawer AppBar
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: ListView.builder(
          itemCount: listFood.length,
          itemBuilder: (BuildContext context, int index) {
            Food food = listFood[index];
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
