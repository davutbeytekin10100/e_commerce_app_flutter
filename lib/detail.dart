
import 'package:e_commerce_app/add_cart.dart';
import 'package:e_commerce_app/clothes_info.dart';
import 'package:e_commerce_app/clothes_model.dart';
import 'package:e_commerce_app/detail_app_Bar.dart';
import 'package:e_commerce_app/size_List.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

  final Clothes clothes;
  DetailPage(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [

             DetailAppBar(clothes),

             ClothesInfo(clothes),

             SizeList(),

             AddCart(clothes),

           ],
         ),
       ),
    );
  }
}
