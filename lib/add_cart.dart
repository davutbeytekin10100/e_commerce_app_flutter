
import 'package:e_commerce_app/clothes_model.dart';
import 'package:flutter/material.dart';

class AddCart extends StatelessWidget { // 15. CI
  final Clothes clothes;
  AddCart(this.clothes);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("Price",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey),),

              Text(clothes.clothesPrice,style: TextStyle(fontWeight: FontWeight.bold,height: 1.5,fontSize: 20,color: Colors.amber),),

            ],
          ),

          SizedBox(width: 20,),

          Expanded(
            child: Container(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                  shadowColor: Colors.amber,
                  primary: Colors.pink.shade500,
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Add To Cart",style: TextStyle(fontSize: 20),),

                    SizedBox(width: 10,),

                    Icon(Icons.local_shipping_outlined),
                  ],
                ),

                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),

        ],
      ),

    );
  }
}
