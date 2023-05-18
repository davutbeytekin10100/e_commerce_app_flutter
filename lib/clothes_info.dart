import 'package:e_commerce_app/clothes_model.dart';
import 'package:flutter/material.dart';

class ClothesInfo extends StatelessWidget {

  final Clothes clothes;
  ClothesInfo(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${clothes.clothesTitle}  ${clothes.clothesSubtitle}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.amber.withOpacity(0.9),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 10),
            child: Row(
              children: [
                Icon(
                  Icons.star_border,
                  color: Colors.amber.shade500,
                ),
                Text(
                  " 4.5 (2.7k) ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text:
                    "Gucci Over Size Dina Sarıhan Pandam benim karım bebeğim caım yavrum\nGucci Over Size Dina Sarıhan Pandam benim karım bebeğim caım yavrum",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7), height: 1.5),
              ),
              TextSpan(
                text: " Read More...",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
