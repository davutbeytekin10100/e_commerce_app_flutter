import 'package:e_commerce_app/clothes_model.dart';
import 'package:e_commerce_app/detail.dart';
import 'package:flutter/material.dart';

class ClothesItem extends StatelessWidget {
  final Clothes clothes;

  ClothesItem(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage(clothes)));
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 170,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Colors.deepPurple),
                        image: DecorationImage(
                          image: AssetImage(clothes.clothesImageUrl),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Positioned(
                    right: 20,
                    top: 15,
                    child: Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: Colors.amber.shade500,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                clothes.clothesTitle,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.pink.shade500),
              ),
              Text(
                clothes.clothesSubtitle,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                clothes.clothesPrice,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.amber.shade500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
