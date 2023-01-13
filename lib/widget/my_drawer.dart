import 'package:flutter/material.dart';
import 'package:food_menu/pages/cake_page.dart';
import 'package:food_menu/pages/hot_drinks_page.dart';

import '../pages/cold_drings_page.dart';
import '../pages/menu.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey.shade300,
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: Colors.orange.shade300,
                      size: 28,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "M E N U",
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: ((context) => const AppMenu()),
                  ),
                );
              },
              leading: const Icon(Icons.flatware_outlined),
              title: const Text(
                "Platos",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: ((context) => const ColdDrinksPage()),
                  ),
                );
              },
              leading: const Icon(Icons.wine_bar_rounded),
              title: const Text(
                "Bebidas Frías",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: ((context) => const HotDrinksPage()),
                  ),
                );
              },
              leading: const Icon(Icons.coffee_rounded),
              title: const Text(
                "Bebidas Calientes",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const CakePage(),
                  ),
                );
              },
              leading: const Icon(Icons.cake_rounded),
              title: const Text(
                "Postres",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.location_on),
              title: Text(
                "Calle 0 #2A-23 Pamplona - Colombia",
                style: TextStyle(fontSize: 15, color: Colors.grey.shade500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
