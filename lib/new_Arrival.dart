import 'package:e_commerce_app/categories_List.dart';
import 'package:e_commerce_app/clothes_Item.dart';
import 'package:e_commerce_app/clothes_model.dart';
import 'package:flutter/material.dart';

class NewArrival extends StatelessWidget {
  final _myClothesList = Clothes.generateClothesPictures();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoriesList("New Caming"),
          Container(
            height: 280,
            decoration: BoxDecoration(
              color: Colors.pink.shade500,
              border: Border.all(width: 2, color: Colors.deepPurple),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 24),
              scrollDirection: Axis.horizontal,
              itemCount: _myClothesList.length,
              separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
              itemBuilder: (context, index) =>
                  ClothesItem(_myClothesList[index]),
            ),
          ),
        ],
      ),
    );
  }
}
