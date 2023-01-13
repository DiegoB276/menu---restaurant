import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductTile extends StatelessWidget {
  final String name;
  final String description;
  final int price;
  final String pathImage;
  const ProductTile(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.pathImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: Colors.brown.shade100,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 5, top: 10, bottom: 10, right: 5),
              //Imagen del producto
              child: Container(
                width: 150,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    pathImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            //Descripción del producto
            Padding(
              padding: const EdgeInsets.only(right: 13),
              child: SizedBox(
                //color: Colors.orange,
                width: 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.lilitaOne(fontSize: 25),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      description,
                      style:
                          TextStyle(fontSize: 13, color: Colors.grey.shade600),
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$ $price",
                      style: GoogleFonts.lilitaOne(
                          fontSize: 20, color: Colors.brown.shade700),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
